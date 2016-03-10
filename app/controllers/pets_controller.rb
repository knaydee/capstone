class PetsController < ApplicationController
  before_action :require_login

  def index
    @pets = Pet.all
  end

  def show
    id = params[:id]
    @pet = Pet.find(id)
  end

  def new
    @pet = Pet.new
    @action = "create"
  end

end
