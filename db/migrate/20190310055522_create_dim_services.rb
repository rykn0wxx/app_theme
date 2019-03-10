class CreateDimServices < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_services do |t|
      t.string :name,               limit: 100, null: false, default: ""
      t.references :dim_language,   foreign_key: true
      t.boolean :active,            default: true

      t.timestamps
    end
    add_index :dim_services, :name, unique: true
  end
end
