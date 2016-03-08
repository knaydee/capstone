class ServicesController < ApplicationController
  before_action :require_login

  def show
    id = params[:id]
    @service = Service.find(id)
    @vet_services = ServiceVet.where("service_id = '#{id}'")
    @services = @vet_services.map do |vs|
      vs_id = vs.vet_id
      Service.find(vs_id)
    end
  end

end
