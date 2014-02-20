class Site < ActiveRecord::Base
  attr_accessible :address, :apn, :city, :county, :fault_id, :loc_latitude, :loc_longitude, :loc_page, :number, :structure_id, :tombrobox
  
end
