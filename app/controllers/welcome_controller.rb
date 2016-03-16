class WelcomeController < ApplicationController

  def index
    puts "Hii"
    puts params
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
