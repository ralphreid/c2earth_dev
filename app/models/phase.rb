class Phase < ActiveRecord::Base
  attr_accessible :Rakefile, :bad_pay_history, :bill_address, :bill_attention, :bill_city, :bill_name, :bill_state, :bill_zip, :company_id, :description, :insurance_notes, :insurance_policy_number, :investigation_type_id, :keywords, :notes, :phase, :project_id, :project_manager_id, :proposal_date, :proposal_number, :report_date, :site_id, :stakeholder_id
  belongs_to :project
  belongs_to :project_manager
end
