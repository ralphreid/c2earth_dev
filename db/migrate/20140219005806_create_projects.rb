class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_number_id
      t.integer :project_manager_id
      t.integer :structure_type_id
      t.integer :project_prefix_id
      t.integer :investigation_type_id
      t.integer :fault_id
      t.integer :vendor_id
      t.integer :client_type_id
      t.integer :insurance_company_id
      t.integer :client_id
      t.integer :site_id
      t.integer :stakeholder_id
      t.string :name
      t.string :name_alternate
      t.text :description
      t.date :proposal_date
      t.string :proposal_number
      t.date :report_date
      t.string :notes
      t.string :insurance_policy_number
      t.text :insurance_notes
      t.string :bill_name
      t.string :bill_attention
      t.string :bill_address
      t.string :bill_city
      t.string :bill_state
      t.string :bill_zip
      t.text :bad_pay_history

      t.timestamps
    end
  end
end
