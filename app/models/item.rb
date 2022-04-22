class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 150 }

  has_many :orderDetails
end
