class Bike < ApplicationRecord

  enum status: { active: 'active', maintenance: 'maintenance', inactive: 'inactive', lost: 'lost', in_use: 'in_use' }

  validates :model, presence: true

end
