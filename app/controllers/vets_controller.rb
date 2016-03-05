class VetsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    if params[:search]
      @vets = Vet.search(params[:search]).order("name DESC")
    else
      @vets = Vet.all.order('name DESC')
    end
  end

  def show
    id = params[:id]
    @vet = Vet.find(id)
    @service_vets = ServiceVet.where("vet_id = '#{id}'")
    @services = @service_vets.map do |sv|
      sv_id = sv.service_id
      Service.find(sv_id)
    end
  end

  def new
    @vet = Vet.new
    @action = "create"
  end

  def create
    vet = Vet.create(vet_params[:vet])
    user_vet = UserVet.new
    user_vet.user_id = session[:user_id]
    @uservet_id = user_vet.user_id
    user_vet.vet_id = vet.id
    user_vet.save
    redirect_to root_path
  end

  def edit
    id = params[:id]
    @vet = Vet.find(id)
    @action = "update"
  end

  def update
    id = params[:id]
    Vet.update(id, vet_params[:vet])
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    Vet.destroy(id)
    redirect_to vets_path
  end

  private

  def vet_params
    params.permit(vet:[:name, :url, :email, :address, :phone, :fax, :favorite])
  end

  def only_owner
      if !@current_user || @current_user.id != Vet.find(params[:id]).user_id
        flash[:error] = "You are not authorized to view that section"
        redirect_to root_path
      end
  end

end
