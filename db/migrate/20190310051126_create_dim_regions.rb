class CreateDimRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_regions do |t|
      t.string :name,       limit: 50, null: false, default: ""
      t.string :label,      limit: 20, null: false, default: ""
      t.string :code,       limit: 5, null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :dim_regions, :name, unique: true
  end
end
