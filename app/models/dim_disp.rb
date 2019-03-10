# == Schema Information
#
# Table name: dim_disps
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  disp       :string(100)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dim_disps_on_disp  (disp) UNIQUE
#

class DimDisp < ApplicationRecord
  validates :disp, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
end
