class WelcomeController < ApplicationController

  def index
    puts "Hii"
    puts params
    @params_search = params[:search]
    if params[:search]
      @vets = Vet.search(params[:search]).order("name ASC")
      puts "Helllo", Vet.search(params[:search])
      puts params[:search]
      puts Vet.search(params[:search])
    else
      @vets = Vet.all.order('name ASC')
    end
    render :index
  end

  def letsencrypt
    render plain: ENV['LE_AUTH_RESPONSE']
  end
end
