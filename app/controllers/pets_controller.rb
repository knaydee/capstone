class PetsController < ApplicationController
  before_action :require_login

  def index
    
  end

  def new
    @pet = Pet.new
    @action = "create"
  end

end
