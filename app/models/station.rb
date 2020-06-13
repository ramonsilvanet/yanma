class Station < ApplicationRecord

  enum status: { active: 'active', maintenance: 'maintenance', inactive: 'inactive' }

  validates :address, :longitude, :latitude,  presence: true
  validates :latitude, :longitude, numericality: true
  
  has_many :slots, dependent: :destroy

end
