class Company < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :contact, :email, :fax, :notes, :phone, :state, :website, :zip
end
