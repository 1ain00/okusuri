class MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :move_to_index, only: [:show, :edit, :destroy]

  def index
    @medicines = Medicine.where(user_id: current_user&.id)

  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      redirect_to root_path, notice: "記録しました"
    else
      render :new
  end
end


  def show

  end

  def edit
 
  end

  def update
    if @medicine.update(medicine_params)
      redirect_to medicines_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @medicine.destroy
    redirect_to medicines_path, notice:"削除しました"
  end
  
  private

  def medicine_params
    params.require(:medicine).permit(:name, :memo, :start_time, :image). merge(user_id: current_user.id)
  end

  def set_medicine
    @medicine = Medicine.find(params[:id])
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @medicine.user_id
      redirect_to action: :index
    end
  end

end



