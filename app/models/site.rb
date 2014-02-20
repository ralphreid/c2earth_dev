class Site < ActiveRecord::Base
  attr_accessible :address, :apn, :city, :county, :fault_id, :loc_latitude, :loc_longitude, :loc_page, :number, :structure_type_id, :tombrobox
  has_and_belongs_to_many :structure_types
  belongs_to :fault
end
