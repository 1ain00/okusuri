class MedicinelistsController < ApplicationController
  before_action :set_medicinelist, only: [:edit, :destroy]
  protect_from_forgery 



  def new
    @medicinelists = Medicinelist.all
    @medicinelist = Medicinelist.new
    @medicinelistmorning = Medicinelist.where(timing_id: "2")
    @medicinelistafternoon = Medicinelist.where(timing_id: "3")
    @medicinelistevening = Medicinelist.where(timing_id: "4")
    @medicinelistbeforesleep = Medicinelist.where(timing_id: "5")
  end


  def create
    @medicinelist = Medicinelist.new(medicinelist_params)
    if @medicinelist.save
      redirect_to  new_medicinelist_path
  end
end

def edit
end

def update
  if @medicinelist.update(medicinelist_params)
    redirect_to  new_medicinelist_path
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
    params.require(:medicinelist).permit(:name, :number, :timing_id)
    .merge(user_id: current_user.id)
  end

def set_medicinelist
  @medicinelist = Medicinelist.find(params[:id])
end


end
