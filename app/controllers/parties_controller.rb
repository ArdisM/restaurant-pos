class PartiesController < ApplicationController

  def index
    @parties = Party.all
    @party = Party.new
  end

def new
@parties = Party.all
@party = Party.new
end

  def create
    Party.create(party_params)
    redirect_to orders_path
  end


  def destroy
    Party.destroy(params[:id])
    redirect_to parties_path
  end

  
  private

  def party_params
    params.require(:party).permit(:table_numb, :employee)
  end

end
