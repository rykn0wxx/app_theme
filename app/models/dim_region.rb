# == Schema Information
#
# Table name: dim_regions
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string(5)        default(""), not null
#  label      :string(20)       default(""), not null
#  name       :string(50)       default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dim_regions_on_name  (name) UNIQUE
#

class DimRegion < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 50 }
  validates :label, :length => { :maximum => 20 }
  validates :code, :length => { :maximum => 5 }
end
