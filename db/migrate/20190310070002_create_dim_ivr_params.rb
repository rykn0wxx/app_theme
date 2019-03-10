class CreateDimIvrParams < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_ivr_params do |t|
      t.string :ivr_param,        null: false, default: ""
      t.integer :ivr_code
      t.references :dim_client,   foreign_key: true
      t.boolean :active,          default: true

      t.timestamps
    end
    add_index :dim_ivr_params, :ivr_param, unique: true
  end
end
