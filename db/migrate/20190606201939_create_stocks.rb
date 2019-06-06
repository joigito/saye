class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :productootrabajo
      t.decimal :precosto, precision: 8, scale: 2
      t.decimal :preventa, precision: 8, scale: 2
      t.integer :cantidad

      t.timestamps
    end
  end
end
