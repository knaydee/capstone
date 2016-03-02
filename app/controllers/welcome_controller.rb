class WelcomeController < ApplicationController
  def index
    @vets = Vet.all
  end
end
