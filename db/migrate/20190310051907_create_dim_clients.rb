class CreateDimClients < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_clients do |t|
      t.string :name,             limit: 100, null: false, default: ""
      t.string :code,             limit: 20, null: false, default: ""
      t.references :dim_project,  foreign_key: true
      t.boolean :active,          default: true

      t.timestamps
    end
    add_index :dim_clients, :name, unique: true
  end
end
