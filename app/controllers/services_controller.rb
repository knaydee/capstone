class ServicesController < ApplicationController
  include ApplicationHelper
  before_action :require_login

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
    @vet_service = ServiceVet.where(:vet => @vet, :service => @service).first
  end

  def new
    @service = Service.new
    @action = "create"
  end
  
end
