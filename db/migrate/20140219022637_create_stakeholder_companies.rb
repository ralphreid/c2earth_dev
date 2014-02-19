class CreateStakeholderCompanies < ActiveRecord::Migration
  def change
    create_table :stakeholder_companies do |t|
      t.integer :takeholder_company_type_id
      t.string :company_name
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.text :website
      t.text :notes

      t.timestamps
    end
  end
end
