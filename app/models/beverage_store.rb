class BeverageStore < ApplicationRecord
  belongs_to :station

  validates :name, presence: true, uniqueness: true
end
