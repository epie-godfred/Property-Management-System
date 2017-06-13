class Address < ApplicationRecord
  belongs_to :station

  validates :city, presence: true
  validates :street, presence: true
  validates :number, presence: true
end
