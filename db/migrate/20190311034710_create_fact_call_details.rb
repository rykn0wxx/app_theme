class CreateFactCallDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_call_details do |t|
      t.references :dim_client, foreign_key: true
      t.references :dim_timezone, foreign_key: true
      t.references :dim_call_category, foreign_key: true
      t.references :dim_call_type, foreign_key: true
      t.references :dim_call_action, foreign_key: true
      t.references :dim_call_action_reason, foreign_key: true
      t.references :dim_disp, foreign_key: true
      t.references :dim_service, foreign_key: true
      t.references :call_ivr_param_1, foreign_key: true
      t.references :call_ivr_param_2, foreign_key: true
      t.references :call_ivr_param_3, foreign_key: true
      t.references :call_ivr_param_4, foreign_key: true
      t.references :call_ivr_param_9, foreign_key: true
      t.references :call_ivr_param_10, foreign_key: true
      t.references :call_ivr_param_16, foreign_key: true
      t.references :call_ivr_param_18, foreign_key: true
      t.references :call_ivr_param_19, foreign_key: true
      t.integer :call_id
      t.integer :call_seq
      t.string :call_dialed_num
      t.datetime :call_answer_date
      t.datetime :call_end_date
      t.datetime :call_end_date_tz
      t.datetime :call_start_date
      t.datetime :call_start_date_tz
      t.datetime :call_wrap_end_date
      t.integer :call_hold_number
      t.integer :call_queue_time
      t.integer :call_talk_time
      t.integer :call_hold_time
      t.integer :call_wrap_time

      t.timestamps
    end
  end
end
