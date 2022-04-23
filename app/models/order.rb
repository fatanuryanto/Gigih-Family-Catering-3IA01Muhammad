class Order < ApplicationRecord
  belongs_to :customer
  has_many :orderDetails
  has_many :items, through: :orderDetails
end
