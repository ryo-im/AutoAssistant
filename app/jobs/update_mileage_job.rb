class UpdateMileageJob < ApplicationJob
  queue_as :default

  def perform
    Car.all.each do |car|
      car.total_mileage += car.monthly_mileage
      car.save
    end
  end
end