class WelcomeController < ApplicationController
  def index
    @description_person = params[:description_p]
  end
end
