# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Setting initial undefined values

# DimRegion.create!(:name => 'Undefined', :label => 'Undefined', :code => 'un')
# DimProject.create!(:name => 'Undefined')
# DimTimezone.create!(:name => 'Undefined')
# DimCallCategory.create!(:call_category => 'Undefined')
# DimCallType.create!(:call_type => 'Undefined')
# DimCallAction.create!(:call_action => 'Undefined')
# DimCallActionReason.create!(:call_action_reason => 'Undefined')
# DimDisp.create!(:disp => 'Undefined')
# DimLanguage.create!(:name => 'Undefined', :code => 'und')

# raw_files = [
#   {
#     :file => 'raw_files/dim_region.csv',
#     :col => :dim_region_id,
#     :model => DimRegion
#   },
#   {
#     :file => 'raw_files/dim_project.csv',
#     :col => :dim_project_id,
#     :model => DimProject
#   },
#   {
#     :file => 'raw_files/dim_timezone.csv',
#     :col => :dim_timezone_id,
#     :model => DimTimezone
#   },
#   {
#     :file => 'raw_files/dim_call_category.csv',
#     :col => :dim_call_category_id,
#     :model => DimCallCategory
#   },
#   {
#     :file => 'raw_files/dim_call_type.csv',
#     :col => :dim_call_type_id,
#     :model => DimCallType
#   },
#   {
#     :file => 'raw_files/dim_call_action.csv',
#     :col => :dim_call_action_id,
#     :model => DimCallAction
#   },
#   {
#     :file => 'raw_files/dim_call_action_reason.csv',
#     :col => :dim_call_action_reason_id,
#     :model => DimCallActionReason
#   },
#   {
#     :file => 'raw_files/dim_disposition.csv',
#     :col => :dim_disposition_id,
#     :model => DimDisp
#   },
#   {
#     :file => 'raw_files/dim_language.csv',
#     :col => :dim_language_id,
#     :model => DimLanguage
#   }
# ]

# def process_file(file_path, col_delete, ar_model)
#   spreadsheet = CSV.table(file_path, { :headers => true })
#   spreadsheet.delete(col_delete)
#   trans_data = spreadsheet.map { |row| row.to_hash }
#   ar_model.create!(trans_data)
# end

# raw_files.each do |f|
#   process_file f[:file], f[:col], f[:model]
# end

# def upload_clients
#   processed_data = []
#   spreadsheet = CSV.table('raw_files/dim_client.csv', { :headers => true })
#   spreadsheet.delete(:dim_client_id)
#   trans_data = spreadsheet.map { |row| row.to_hash }
#   trans_data.each do |d|
#     projid = DimProject.find_by_name(d[:dim_project_id])
#     temp_data = {
#       :name => d[:name],
#       :code => d[:code],
#       :dim_project => projid
#     }
#     processed_data << temp_data
#   end
#   DimClient.create!(processed_data)
# end

# upload_clients

# def upload_services
#   processed_data = []
#   spreadsheet = CSV.table('raw_files/dim_service.csv', { :headers => true })
#   spreadsheet.delete(:tt_service_id)
#   trans_data = spreadsheet.map { |row| row.to_hash }
#   trans_data.each do |d|
#     langid = DimLanguage.find_by_name(d[:language_name])
#     temp_data = {
#       :name => d[:name],
#       :dim_language => langid
#     }
#     processed_data << temp_data
#   end
#   DimService.create!(processed_data)
# end

# upload_services

# def upload_uip_services
#   processed_data = []
#   spreadsheet = CSV.table('raw_files/dim_uip_service.csv', { :headers => true })
#   spreadsheet.delete(:tt_uip_service_id)
#   trans_data = spreadsheet.map { |row| row.to_hash }
#   qry_model = DimService.joins(:dim_language)
#   trans_data.each do |d|
#     servid = qry_model.where(:dim_languages => { :name => d[:language_name] }, :dim_services => { :name => d[:service_name] })
#     clientid = DimClient.find_by_name(d[:client_name])
#     temp_data = {
#       :service_id => d[:service_id],
#       :dim_service => servid,
#       :dim_client => clientid
#     }
#     processed_data << temp_data
#   end
#   DimUipService.create!(processed_data)
# end

# upload_uip_services