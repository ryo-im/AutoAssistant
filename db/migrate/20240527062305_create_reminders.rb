class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.integer :maintenance_type_id, null: false
      t.datetime :next_due_at,        null: false
      t.references :car,              null: false, foreign_key: true
      t.timestamps
    end
  end
end
