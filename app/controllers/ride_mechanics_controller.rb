class RideMechanicsController < ApplicationController
  def create
    RideMechanic.create!(ride_id: params[:rides], mechanic_id: params[:id])
    redirect_to "/mechanics/#{params[:id]}"
  end
end
