class MedicinesController < ApplicationController
  def index
    @medicines= Medicine.all
    @medicine = Medicine.new
  end

  def new
    @medicine = Medicine.new
  end

  def create
    Medicine.create(medicine_parameter)
    redirect_to medicines_path
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

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    redirect_to medicines_path, notice:"削除しました"
  end
  
  private

  def medicine_parameter
    params.require(:medicine).permit(:name, :memo, :start_time)
  end

end
