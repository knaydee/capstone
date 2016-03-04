class WelcomeController < ApplicationController
  def index
      id = session[:user_id]
      @user_vets = UserVet.where("user_id = '#{id}'")
      @user_vets.each do |user_vet|
        @vet_name = user_vet.vet.name
        binding.pry
      end
      @vets = Vet.all
  end
end
