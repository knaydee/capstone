class WelcomeController < ApplicationController
  def index
    id = session[:user_id]
    @user_vets = UserVet.where("user_id = '#{id}'")
    @vets = Vet.all
  end
end
