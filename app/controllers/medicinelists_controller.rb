class MedicinelistsController < ApplicationController
  def index
    @medicinlists = Medicinelist.all
  end


  def medicinelist_params
    params.require(:medicinelist).permit(:morning, :morningnum, :afternoon, :afternoonnum, :evening, :eveningnum, :beforesleep, :beforesleepnum). merge(user_id: current_user.id)
  end
end
