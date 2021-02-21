class Shelf < ApplicationRecord
  belongs_to :cubboard
  has_many :links, as: :linkable,dependent: :destroy
end
