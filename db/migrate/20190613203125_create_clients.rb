class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :dni
      t.string :apeynom
      t.string :celular
      t.string :domicilio

      t.timestamps
    end
  end
end
