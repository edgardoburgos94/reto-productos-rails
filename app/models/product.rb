class Product < ApplicationRecord
  has_many :appointments
  has_many :categories, through: :appointments, dependent: :delete_all
end
