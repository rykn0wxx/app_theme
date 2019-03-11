class CreateDimUipUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_uip_users do |t|
      t.string :user_id,            null: false, default: ""
      t.references :dim_emp_user,   foreign_key: true
      t.references :dim_client,     foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :active,            default: true

      t.timestamps
    end
    add_index :dim_uip_users, :user_id, unique: true
  end
end
