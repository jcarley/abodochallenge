class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :description
      t.decimal :start_time, precision: 10, scale: 4
      t.decimal :end_time, precision: 10, scale: 4
      t.decimal :elapsed, precision: 10, scale: 4

      t.timestamps
    end
  end
end
