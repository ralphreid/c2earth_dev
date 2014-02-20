class Stakeholder < ActiveRecord::Base
  attr_accessible :address, :address_alternate, :cell_phone, :cell_phone_alternate, :city, :city_alternate, :client_type_id, :company_id, :email, :email_alternate, :fax_phone, :fax_phone_alternate, :home_phone, :home_phone_alternate, :name, :name, :notes, :stakeholder_type_id, :state, :state_alternate, :work_phone, :work_phone_alternate, :zip, :zip_alternate
  belongs_to :company
end
