class Bike < ApplicationRecord
  
  enum status: { active: 'active', maintenance: 'maintenance', inactive: 'inactive', lost: 'lost' }

  validates :model, presence: true

end
