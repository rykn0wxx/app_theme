# == Schema Information
#
# Table name: dim_uip_users
#
#  id              :integer          not null, primary key
#  active          :boolean          default(TRUE)
#  end_date        :date
#  start_date      :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dim_client_id   :integer
#  dim_emp_user_id :integer
#  user_id         :string           default(""), not null
#
# Indexes
#
#  index_dim_uip_users_on_dim_client_id    (dim_client_id)
#  index_dim_uip_users_on_dim_emp_user_id  (dim_emp_user_id)
#  index_dim_uip_users_on_user_id          (user_id) UNIQUE
#

class DimUipUser < ApplicationRecord
  belongs_to :dim_emp_user
  belongs_to :dim_client
  validates :user_id, :presence => true, :uniqueness => true
  validates :start_date, :presence => true
end
