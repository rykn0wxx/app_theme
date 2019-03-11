# == Schema Information
#
# Table name: dim_emp_users
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  first_name :string           default(""), not null
#  hire_date  :date
#  last_name  :string           default(""), not null
#  term_date  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  emp_id     :string           default(""), not null
#  login_id   :string           default(""), not null
#
# Indexes
#
#  index_dim_emp_users_on_emp_id  (emp_id) UNIQUE
#

class DimEmpUser < ApplicationRecord
  has_many :dim_uip_users
  validates :emp_id, :presence => true, :uniqueness => true
  validates :last_name, :first_name, :login_id, :hire_date, :presence => true
end
