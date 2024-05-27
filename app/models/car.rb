class Car < ApplicationRecord
  has_many :maintenances
  has_many :reminders  
end
