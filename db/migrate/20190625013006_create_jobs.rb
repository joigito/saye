class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.date :fecha
      t.references :client, foreign_key: true
      t.references :stock, foreign_key: true
      t.integer :cantidad
      t.decimal :precio, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
