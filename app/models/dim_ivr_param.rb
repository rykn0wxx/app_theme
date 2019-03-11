# == Schema Information
#
# Table name: dim_ivr_params
#
#  id            :integer          not null, primary key
#  active        :boolean          default(TRUE)
#  ivr_code      :integer
#  ivr_param     :string           default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  dim_client_id :integer
#
# Indexes
#
#  index_dim_ivr_params_on_dim_client_id  (dim_client_id)
#  index_dim_ivr_params_on_ivr_param      (ivr_param) UNIQUE
#

class DimIvrParam < ApplicationRecord
  belongs_to :dim_client
  has_many :fact_call_details
  validates :ivr_param, :presence => true, :uniqueness => true
  validates :ivr_code, :presence => true
end
