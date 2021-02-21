class Cubboard < ApplicationRecord
  belongs_to :room
  has_many :links, as: :linkable, dependent: :destroy
  has_many :shelves, dependent: :destroy
end
