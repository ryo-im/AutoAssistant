class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.integer :maintenance_type_id, null: false
      t.datetime :performed_at,       null: false
      t.integer :mileage,             null: false
      t.integer :cost,                null: false
      t.references :car,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
