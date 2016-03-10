class WelcomeController < ApplicationController
  def index
    id = session[:user_id]
    @user_vets = UserVet.where(user_id: id)
    @user_vets.each do |user_vet|
      @user_vet = user_vet
    end
    @vets = Vet.all
  end

  def letsencrypt
    render plain: ENV['LE_AUTH_RESPONSE']
  end
end
