class Trash < ApplicationRecord

  has_many :trash_items
  has_many :users, through: :trash_items
end
