class UnlockPassword < ApplicationRecord
  has_one :user
  belongs_to :station

  validates_associated :station
  validates_associated :user

end
