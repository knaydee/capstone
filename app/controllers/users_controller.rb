class UsersController < ApplicationController
  def vet_index
    id = session[:user_id]
    @user_vets = UserVet.where(user_id: id).order(primary_vet: :desc)
  end
end
