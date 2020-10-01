class ProfessorsController < ApplicationController

  def index
    @professors = Professor.all
  end

  def create
    @professor = Professor.create (params)
  end 

  def show 
    @professor = Professor.new (params)
  end 

end
