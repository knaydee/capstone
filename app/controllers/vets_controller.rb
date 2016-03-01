class VetsController < ApplicationController
  before_action :only_owner, only: [:edit, :update, :show, :destroy]
  before_action :require_login, only: [:index, :new, :create]

  def index
    @vets = @current_user.vets
    @title = "My Veterinarians"
  end

  def show
    id = params[:id]
    @vet = Vet.find(id)
    @title = "#{@vet.name}'s Info"
    @name = @vet.name
  end

  def new
    @vet = Vet.new()
    @action = "create"
    @title = "Add a New Veterinarian"
  end

  def create
    vet = Vet.create(vet_params[:vet])
    vet.user_id = session[:user_id]
    vet.save
    redirect_to user_path(@current_user)
  end

  def edit
    id = params[:id]
    @vet = Vet.find(id)
    @action = "update"
    @title = "Edit Veterinarian Info"
  end

  def update
    id = params[:id]
    Vet.update(id, vet_params[:vet])
    redirect_to vet_path(id)
  end

  def destroy
    id = params[:id]
    Vet.destroy(id)
    redirect_to vets_path
  end

  private

  def vet_params
    params.permit(vet:[:name, :url, :email, :address, :phone, :fax])
  end

  def only_owner
      if !@current_user || @current_user.id != Vet.find(params[:id]).user_id
        flash[:error] = "You are not authorized to view that section"
        redirect_to root_path
      end
  end

end
