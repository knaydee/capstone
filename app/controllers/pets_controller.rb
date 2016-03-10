class PetsController < ApplicationController
  before_action :require_login

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
    @action = "create"
  end

end
