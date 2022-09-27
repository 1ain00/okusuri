class MedicinesController < ApplicationController
  def index
    @medicines= Medicine.all
    @medicine = Medicine.new
  end

  
  private

  def medicine_parameter
    params.require(:medicine).permit(:name, :content, :start_time)
  end

end
