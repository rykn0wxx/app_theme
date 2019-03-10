# == Schema Information
#
# Table name: dim_uip_services
#
#  id             :integer          not null, primary key
#  active         :boolean          default(TRUE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  dim_client_id  :integer
#  dim_service_id :integer
#  service_id     :integer
#
# Indexes
#
#  index_dim_uip_services_on_dim_client_id   (dim_client_id)
#  index_dim_uip_services_on_dim_service_id  (dim_service_id)
#

class DimUipService < ApplicationRecord
  belongs_to :dim_service
  belongs_to :dim_client
end
