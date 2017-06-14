class Station < ApplicationRecord
  has_one :address
  has_many :beverage_stores
  has_many :timetables
  has_many :trains, through: :timetables

  validates :name, presence: true, uniqueness: true
  validates :phone, format: { with: /\A(\+\d ?)?[\(\)0-9\- \.]{10,20}\z/ }
end
