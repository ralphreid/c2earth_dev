class Client < ActiveRecord::Base
  attr_accessible :address, :address_alternate, :cell_phone, :cell_phone_alternate, :city, :city_alternate, :email, :email_alternate, :fax_phone, :fax_phone_alternate, :home_phone, :home_phone_alternate, :name, :notes, :state, :state_alternate, :type, :work_phone, :work_phone_alternate, :zip, :zip_alternate
end
