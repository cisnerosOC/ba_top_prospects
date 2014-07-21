class ProspectsController < ApplicationController

  def index
    @prospects = Prospect.all
    respond_with(@prospects)
  end
  def show
    @prospect = Prospect.find_by(:id => params[:id])
    respond_with(@prospect)
  end
  def create 
    @prospect = Prospect.create(prospect_params)
    respond_with(@prospect)
  end
  def edit
    @prospect = Prospect.find_by(:id => params[:id])
    respond_with(prospect)
  end
  def update
    @prospect = Prospect.find_by(:id => params[:id])
    @prospect.update(prospect_params)
    respond_with(@prospect)
  end 
  def destroy
    @prospect = Prospect.find_by(:id => params[:id])
    @prospect.destroy
    respond_with(@prospect)
  end
private
def prospect_params
  return params.require(:prospect).permit(:first_name,:last_name,:team,:rank,:position)
end

end
