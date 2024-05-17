class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_model, null:false
      t.string :number, null:false
      t.integer :total_mileage, null:false
      t.integer :monthly_mileage, null:false
      t.text :image
      t.timestamps
    end
  end
end
