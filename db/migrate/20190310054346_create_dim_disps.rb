class CreateDimDisps < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_disps do |t|
      t.string :disp,       limit: 100, null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :dim_disps, :disp, unique: true
  end
end
