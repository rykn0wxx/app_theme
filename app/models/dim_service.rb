# == Schema Information
#
# Table name: dim_services
#
#  id              :integer          not null, primary key
#  active          :boolean          default(TRUE)
#  name            :string(100)      default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dim_language_id :integer
#
# Indexes
#
#  index_dim_services_on_dim_language_id  (dim_language_id)
#  index_dim_services_on_name             (name) UNIQUE
#

class DimService < ApplicationRecord
  belongs_to :dim_language
  has_many :dim_uip_services
  has_many :dim_clients, :through => :dim_uip_services
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
end
