class CreateDimLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_languages do |t|
      t.string :name,       limit: 50, null: false, default: ""
      t.string :code,       limit: 10, null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :dim_languages, :name, unique: true
  end
end
