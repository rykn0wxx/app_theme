# == Schema Information
#
# Table name: dim_timezones
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  name       :string(50)       default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dim_timezones_on_name  (name) UNIQUE
#

class DimTimezone < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 50 }
end
