class Room < ApplicationRecord
  has_many :links, as: :linkable,dependent: :destroy
  has_many :cubboards, dependent: :destroy
end
