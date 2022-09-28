class MedicinesController < ApplicationController
  def index
    @medicines= Medicine.all
    @medicine = Medicine.new
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(medicine_parameter)
    if @medicine.save
      redirect_to root_path, notice: "記録しました"
    else
      render :new
  end
end


  def show
    @medicine = Medicine.find(params[:id])
  end

  def edit
    @medicine = Medicine.find(params[:id])
  end

  def update
    @medicine = Medicine.find(params[:id])
    if @medicine.update(medicine_parameter)
      redirect_to medicines_path, notice: "編集しました"
    else
      render 'edit'
    end
  end
  
  private

  def medicine_parameter
    params.require(:medicine).permit(:name, :memo, :start_time)
  end

end
