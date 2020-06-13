class Slot < ApplicationRecord
  has_one :bike
  belongs_to :station
  
  validates :number, numericality: { only_integer: true }
  validates_associated :station    

end
