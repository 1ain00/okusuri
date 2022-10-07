class MedicinelistsController < ApplicationController


  def new
    @medicinelists = Medicinelist.all
      @medicinelist = Medicinelist.new
  end

  def create
    @medicinelist = Medicinelist.create(medicinelist_params)
 
  end

  def medicinelist_params
    params.require(:medicinelist).permit(:morning, :morningnum, :afternoon, :afternoonnum, :evening, :eveningnum, :beforesleep, :beforesleepnum)
    .merge(user_id: current_user.id)
  end
end
