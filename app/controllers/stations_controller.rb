class StationsController < ApplicationController
  before_action :find_station, only: :show

  def index
    @stations = Station.all
  end

  def show
    @trains = @station.trains
    @beverage_stores = @station.beverage_stores
  end

  private

  def find_station
    @station = Station.where(id: params[:id]).includes(:trains, :beverage_stores).first

    raise ActiveRecord::RecordNotFound unless @station
  end
end