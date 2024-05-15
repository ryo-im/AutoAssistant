class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_model
      t.string :number
      t.integer :total_mileage
      t.integer :monthly_mileage
      t.text :image
      t.timestamps
    end
  end
end
