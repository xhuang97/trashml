class TrashItem < ApplicationRecord

  belongs_to :trash
  belongs_to :user
  
end
