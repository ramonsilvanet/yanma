class UnlockPassword < ApplicationRecord
  has_one :user
  belongs_to :station

end
