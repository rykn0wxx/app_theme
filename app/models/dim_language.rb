# == Schema Information
#
# Table name: dim_languages
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string(10)       default(""), not null
#  name       :string(50)       default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dim_languages_on_name  (name) UNIQUE
#

class DimLanguage < ApplicationRecord
  has_many :dim_services
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 50 }
  validates :code, :length => { :maximum => 50 }
end
