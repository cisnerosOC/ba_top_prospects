class ProspectsController < ApplicationController

  def index
    @prospects = Prospect.all
  end
  def show
    @prospect = Prospect.find_by(:id => params[:id])
  end
  def create 
    @prospect = Prospect.create(prospect_params)
    render :show
  end
  def update
    @prospect = Prospect.find_by(:id => params[:id])
    @prospect.update(prospect_params)
    render :index
  end 
  def destroy
    @prospect = Prospect.find_by(:id => params[:id])
    @prospect.destroy
    render :index
  end
private
def prospect_params
  return params.require(:prospect).permit(:first_name,:last_name,:team,:rank,:position)
end

end
