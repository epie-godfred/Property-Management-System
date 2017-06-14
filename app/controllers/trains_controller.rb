class TrainsController < ApplicationController
  before_action :find_train, only: :show

  def index
    @trains = Train.all
  end

  def show
    @timetables = @train.timetables
  end

  private

  def find_train
    @train = Train.where(id: params[:id]).includes(:timetables).first

    raise ActiveRecord::RecordNotFound unless @train
  end
end
