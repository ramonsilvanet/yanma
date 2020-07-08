class Slot < ApplicationRecord
  has_one :bike
  has_one :station

  validates :number, numericality: { only_integer: true }
  validates_associated :station

end
