class Project < ActiveRecord::Base
  attr_accessible :bad_pay_history, :bill_address, :bill_attention, :bill_city, :bill_name, :bill_state, :bill_zip, :client_id, :client_type_id, :description, :fault_id, :insurance_company_id, :insurance_notes, :insurance_policy_number, :investigation_type_id, :name, :name_alternate, :notes, :project_manager_id, :project_number_id, :project_prefix_id, :proposal_date, :proposal_number, :report_date, :site_id, :stakeholder_id, :structure_type_id, :vendor_id
end
