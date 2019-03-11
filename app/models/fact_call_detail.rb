# == Schema Information
#
# Table name: fact_call_details
#
#  id                        :integer          not null, primary key
#  call_answer_date          :datetime
#  call_dialed_num           :string
#  call_end_date             :datetime
#  call_end_date_tz          :datetime
#  call_hold_number          :integer
#  call_hold_time            :integer
#  call_queue_time           :integer
#  call_seq                  :integer
#  call_start_date           :datetime
#  call_start_date_tz        :datetime
#  call_talk_time            :integer
#  call_wrap_end_date        :datetime
#  call_wrap_time            :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  call_id                   :integer
#  call_ivr_param_10_id      :integer
#  call_ivr_param_16_id      :integer
#  call_ivr_param_18_id      :integer
#  call_ivr_param_19_id      :integer
#  call_ivr_param_1_id       :integer
#  call_ivr_param_2_id       :integer
#  call_ivr_param_3_id       :integer
#  call_ivr_param_4_id       :integer
#  call_ivr_param_9_id       :integer
#  dim_call_action_id        :integer
#  dim_call_action_reason_id :integer
#  dim_call_category_id      :integer
#  dim_call_type_id          :integer
#  dim_client_id             :integer
#  dim_disp_id               :integer
#  dim_service_id            :integer
#  dim_timezone_id           :integer
#
# Indexes
#
#  index_fact_call_details_on_call_ivr_param_10_id       (call_ivr_param_10_id)
#  index_fact_call_details_on_call_ivr_param_16_id       (call_ivr_param_16_id)
#  index_fact_call_details_on_call_ivr_param_18_id       (call_ivr_param_18_id)
#  index_fact_call_details_on_call_ivr_param_19_id       (call_ivr_param_19_id)
#  index_fact_call_details_on_call_ivr_param_1_id        (call_ivr_param_1_id)
#  index_fact_call_details_on_call_ivr_param_2_id        (call_ivr_param_2_id)
#  index_fact_call_details_on_call_ivr_param_3_id        (call_ivr_param_3_id)
#  index_fact_call_details_on_call_ivr_param_4_id        (call_ivr_param_4_id)
#  index_fact_call_details_on_call_ivr_param_9_id        (call_ivr_param_9_id)
#  index_fact_call_details_on_dim_call_action_id         (dim_call_action_id)
#  index_fact_call_details_on_dim_call_action_reason_id  (dim_call_action_reason_id)
#  index_fact_call_details_on_dim_call_category_id       (dim_call_category_id)
#  index_fact_call_details_on_dim_call_type_id           (dim_call_type_id)
#  index_fact_call_details_on_dim_client_id              (dim_client_id)
#  index_fact_call_details_on_dim_disp_id                (dim_disp_id)
#  index_fact_call_details_on_dim_service_id             (dim_service_id)
#  index_fact_call_details_on_dim_timezone_id            (dim_timezone_id)
#

class FactCallDetail < ApplicationRecord
  belongs_to :dim_client
  belongs_to :dim_timezone
  belongs_to :dim_call_category
  belongs_to :dim_call_type
  belongs_to :dim_call_action
  belongs_to :dim_call_action_reason
  belongs_to :dim_disp,           :optional => true
  belongs_to :dim_service
  belongs_to :call_ivr_param_1,   :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_2,   :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_3,   :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_4,   :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_9,   :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_10,  :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_16,  :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_18,  :optional => true, :class_name => 'DimIvrParam'
  belongs_to :call_ivr_param_19,  :optional => true, :class_name => 'DimIvrParam'
end
