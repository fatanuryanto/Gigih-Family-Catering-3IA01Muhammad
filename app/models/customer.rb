class Customer < ApplicationRecord
  validates :name, presence: true, uniqueness: true 
  validates :email, presence: true, format: {
        with: /\A\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+\z/, message: "is not a valid email address"
    }
  has_many :orders
end
