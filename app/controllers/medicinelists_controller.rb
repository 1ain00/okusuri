class MedicinelistsController < ApplicationController


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
      redirect_to  new_medicinelists_path
  end
end

 

  def medicinelist_params
    params.require(:medicinelist).permit(:name, :number, :timing_id)
    .merge(user_id: current_user.id)
  end

end
