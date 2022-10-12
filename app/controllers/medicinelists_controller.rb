class MedicinelistsController < ApplicationController
  before_action :set_medicinelist, only: [:edit, :destroy, :update]
  before_action :authenticate_user!
  before_action :move_to_index, only: :edit

  protect_from_forgery

  def new
    @medicinelists = Medicinelist.where(user_id: current_user&.id)
    @medicinelist = Medicinelist.new
    @medicinelistmorning = Medicinelist.where(timing_id: '2')
    @medicinelistafternoon = Medicinelist.where(timing_id: '3')
    @medicinelistevening = Medicinelist.where(timing_id: '4')
    @medicinelistbeforesleep = Medicinelist.where(timing_id: '5')

  end

  def create
    @medicinelist = Medicinelist.new(medicinelist_params)
    redirect_to new_medicinelist_path if @medicinelist.save
  end

  def edit
  end

  def update
    if @medicinelist.update(medicinelist_params)
      redirect_to new_medicinelist_path
    else
      render 'edit'
    end
  end

  def destroy
    @medicinelist.destroy
    redirect_to new_medicinelist_path
  end

  def toggle
    head :no_content
    @medicinelist = Medicinelist.find(params[:id])
    @medicinelist.done = !@medicinelist.done
    @medicinelist.save
  end

  private

  def medicinelist_params
    params.require(:medicinelist).permit(:name, :number, :timing_id, :memo)
          .merge(user_id: current_user.id)
  end

  def set_medicinelist
    @medicinelist = Medicinelist.find(params[:id])
  end

  def move_to_index
    redirect_to action: :new unless user_signed_in? && current_user.id == @medicinelist.user_id
  end

end
