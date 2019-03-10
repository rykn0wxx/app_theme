# == Schema Information
#
# Table name: dim_clients
#
#  id             :integer          not null, primary key
#  active         :boolean          default(TRUE)
#  code           :string(20)       default(""), not null
#  name           :string(100)      default(""), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  dim_project_id :integer
#
# Indexes
#
#  index_dim_clients_on_dim_project_id  (dim_project_id)
#  index_dim_clients_on_name            (name) UNIQUE
#

class DimClient < ApplicationRecord
  belongs_to :dim_project
  has_many :dim_uip_services
  has_many :dim_services, :through => :dim_uip_services
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
  validates :code, :length => { :maximum => 20 }
end
