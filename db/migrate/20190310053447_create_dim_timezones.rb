class CreateDimTimezones < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_timezones do |t|
      t.string :name,       limit: 50, null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :dim_timezones, :name, unique: true
  end
end
