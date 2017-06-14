class StationsController < ApplicationController
  before_action :find_station, only: :show

  def index
    @stations = Station.all
  end

  def show

  end

  private

  def find_station
    @station = Station.find_by!(id: params[:id])
  end
end