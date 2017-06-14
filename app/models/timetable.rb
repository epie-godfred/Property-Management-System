class Timetable < ApplicationRecord
  belongs_to :train
  belongs_to :station

  validates :day, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 6 }
end