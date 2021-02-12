class Kingdom < ApplicationRecord
  # Model associations
  has_many :citys, foreign_key: :kingdom_id
end
