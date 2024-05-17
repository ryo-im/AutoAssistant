class Car < ApplicationRecord
  has_many :maintenances
  has_many :reminders

  def estimated_mileage
    total_mileage + monthly_mileage * months_since_last_input
  end

  def month_since_last_input
    last_input_date = self.update_at
    current_date = Time.now
    months = (current_date.year * 12 +current_date.month) - (last_input_date.year * 12 + last_input_date.month)
    months
  end
end
