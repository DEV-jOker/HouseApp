class Room < ApplicationRecord
  has_many :links, as: :linkable
end
