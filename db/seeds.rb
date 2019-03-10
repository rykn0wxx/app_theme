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

raw_files = [
  {
    :file => 'raw_files/dim_region.csv',
    :col => :dim_region_id,
    :model => DimRegion
  },
  {
    :file => 'raw_files/dim_project.csv',
    :col => :dim_project_id,
    :model => DimProject
  }
  # {
  #   :file => 'raw_files/dim_timezone.csv',
  #   :col => :dim_timezone_id,
  #   :model => DimTimezone
  # },
  # {
  #   :file => 'raw_files/dim_call_category.csv',
  #   :col => :dim_call_category_id,
  #   :model => DimCallCategory
  # },
  # {
  #   :file => 'raw_files/dim_call_type.csv',
  #   :col => :dim_call_type_id,
  #   :model => DimCallType
  # },
  # {
  #   :file => 'raw_files/dim_call_action.csv',
  #   :col => :dim_call_action_id,
  #   :model => DimCallAction
  # },
  # {
  #   :file => 'raw_files/dim_call_action_reason.csv',
  #   :col => :dim_call_action_reason_id,
  #   :model => DimCallActionReason
  # },
  # {
  #   :file => 'raw_files/dim_disposition.csv',
  #   :col => :dim_disposition_id,
  #   :model => DimDisp
  # },
  # {
  #   :file => 'raw_files/dim_language.csv',
  #   :col => :dim_language_id,
  #   :model => DimLanguage
  # }
]

# spreadsheet = CSV.table('raw_files/dim_region.csv', { :headers => true })
# trans_data = spreadsheet.map { |row| row.to_hash }
# imp_data = DimRegion.create(trans_data)

def process_file(file_path, col_delete, ar_model)
  spreadsheet = CSV.table(file_path, { :headers => true })
  spreadsheet.delete(col_delete)
  trans_data = spreadsheet.map { |row| row.to_hash }
  puts trans_data
end

raw_files.each do |f|
  process_file f[:file], f[:col], f[:model]
end