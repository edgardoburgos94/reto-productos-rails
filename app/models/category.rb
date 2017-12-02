class Category < ApplicationRecord
  has_many :appointments
  has_many :products, through: :appointments
end
