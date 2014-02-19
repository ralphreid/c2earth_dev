class Site < ActiveRecord::Base
  attr_accessible :address, :city, :county, :loc_latitude, :loc_longitude, :loc_page, :number
  
end
