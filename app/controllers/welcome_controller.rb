class WelcomeController < ApplicationController
  before_action :authenticate_moderador!, only: [:dashboard]
  def index
  end
  def dashboard
  	@recipes = Recipe.all
  end
end
