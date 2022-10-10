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
      redirect_to  new_medicinelist_path
  end
end

def edit
  @medicinelist = Medicinelist.find(params[:id])
end

def update
  @medicinelist = Medicinelist.find(params[:id])
  if @medicinelist.update(medicinelist_params)
    redirect_to  new_medicinelist_path
  else
    render 'edit'
  end
end


def destroy
  @medicinelist = Medicinelist.find(params[:id])
  @medicinelist.destroy
  redirect_to new_medicinelist_path

end

  def medicinelist_params
    params.require(:medicinelist).permit(:name, :number, :timing_id)
    .merge(user_id: current_user.id)
  end

 


end
