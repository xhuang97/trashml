class User < ApplicationRecord

  belongs_to :school
  has_many :trash_items
  has_many :trashes, through: :trash_items

end
