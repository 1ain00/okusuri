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


  
  private

  def medicine_parameter
    params.require(:medicine).permit(:name, :memo, :start_time)
  end

end
