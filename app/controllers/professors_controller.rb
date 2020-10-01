class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.create(professor_params)
    redirect_to professors_path
  end 

  def show 
    @professor = Professor.find(params[:id])
  end 

  private

  def professor_params
    params.require(:professor).permit(:name)
  end

end
