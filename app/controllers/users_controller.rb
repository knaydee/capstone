class UsersController < ApplicationController
  def vet_index
    id = session[:user_id]
    @user_vets = UserVet.where(user_id: id)
    @user_vets.each do |user_vet|
      @user_vet = user_vet
    end
  end
end
