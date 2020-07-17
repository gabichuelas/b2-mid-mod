class RideMechanicsController < ApplicationController
  def create
    require "pry"; binding.pry
    redirect_to "/mechanics/#{params[:id]}"
  end
end
