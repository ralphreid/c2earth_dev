class StakeholderCompany < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :contact, :email, :fax, :notes, :phone, :state, :takeholder_company_type_id, :website, :zip
end
