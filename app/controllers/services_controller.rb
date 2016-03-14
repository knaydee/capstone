class ServicesController < ApplicationController
  include ApplicationHelper
  before_action :require_login, except: [:show]

  def show
    id = params[:id]
    vet_id = params[:vet_id]
    @service = Service.find(id)
    @vet = Vet.find(vet_id)
    @vet_services = ServiceVet.where(vet_id: id)
    @services = @vet_services.map do |sv|
      sv_id = sv.service_id
      Service.find(sv_id)
    end
    @vet_service = ServiceVet.where(:vet => @vet, :service => @service.id).first
  end

  def new
    @service = Service.new
    @action = "create"
  end

  def create
    Service.transaction do
      vet_id = params[:vet_id]
      price = params[:price]
      @vet = Vet.find(vet_id)
      @service = Service.create(service_params[:service])
      @service_vet = ServiceVet.create({vet: @vet, service: @service, price: price})
    end
      redirect_to root_path
      flash[:notice] = 'Service was added'
  end

  def edit
    id = params[:id]
    vet_id = params[:vet_id]
    @vet = Vet.find(vet_id)
    @service = Service.find(id)
    @action = "update"
  end

  def update
    # Need to get price to show up on the form
    id = params[:id]
    price = params[:price]
    Service.update(id, service_params[:service], price)
    redirect_to root_path
  end

  def destroy_servicevet
    Service.transaction do
      service_id = params[:service_id]
      vet_id = params[:vet_id]
      @service = Service.find(service_id)
      @vet = Vet.find(vet_id)
      @service_vet = ServiceVet.where(:vet => @vet, :service => @service).first
      sv_id = @service_vet.id
      ServiceVet.destroy(sv_id)
    end
    redirect_to root_path
    flash[:notice] = 'Service was deleted'

  end

  def destroy
    id = params[:id]
    Service.destroy(id)
    redirect_to root_path
  end

  private

  def service_params
    params.permit(service:[:name, :service_type, :avg_cost, :price])
  end

end
