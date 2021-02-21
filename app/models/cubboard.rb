class Cubboard < ApplicationRecord
  belongs_to :room
  has_many :links, as: :linkable, dependent: :destroy
end
