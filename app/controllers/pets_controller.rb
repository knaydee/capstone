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

  def create
    @pet = Pet.create(pet_params[:pet])
    redirect_to user_pets_path(@current_user)
  end

  def edit
    id = params[:id]
    @pet = Pet.find(id)
    @action = "update"
  end

  private

  def pet_params
    params.permit(pet:[:name, :age, :breed, :weight, :size, :sex, :species])
  end

  def only_owner
      if !@current_user || @current_user.id != Pet.find(params[:id]).user_id
        flash[:error] = "You are not authorized to view that section"
        redirect_to root_path
      end
  end

end
