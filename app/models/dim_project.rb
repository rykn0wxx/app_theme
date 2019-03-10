# == Schema Information
#
# Table name: dim_projects
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  name       :string(100)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dim_projects_on_name  (name) UNIQUE
#

class DimProject < ApplicationRecord
  has_many :dim_clients
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
end
