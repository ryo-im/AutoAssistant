class Car < ApplicationRecord
  validates :car_model, presence: true
  validates :number, presence: true
end
