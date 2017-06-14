class Train < ApplicationRecord
  has_many :timetables
  has_many :stations, through: :timetables

  validates :name, presence: true
  validates :number, presence: true, uniqueness: true
  validates :wagon_count, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 50 }

  def route
    "#{start_station.name} - #{finish_station.name}"
  end

  def starting_station
    self.timetables.where(arrival_time: nil).first&.station
  end

  def end_station
    self.timetables.where(departure_time: nil).first&.station
  end
end
