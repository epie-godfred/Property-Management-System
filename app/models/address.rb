class Address < ApplicationRecord
  belongs_to :station

  validates :city, presence: true
  validates :street, presence: true
  validates :number, presence: true

  def to_s
    "#{self.street}, #{self.number}, #{self.city}, #{self.country}"
  end
end
