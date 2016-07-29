class WelcomeController < ApplicationController

  def index
    @params_search = params[:search]
    if params[:search]
      @vets = Vet.search(params[:search]).order("name ASC")
    else
      @vets = Vet.all.order('name ASC')
    end
    render :index
  end

  def letsencrypt
    render plain: ENV['LE_AUTH_RESPONSE']
  end
end
