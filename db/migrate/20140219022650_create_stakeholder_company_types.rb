class CreateStakeholderCompanyTypes < ActiveRecord::Migration
  def change
    create_table :stakeholder_company_types do |t|
      t.string :takeholder_company_type

      t.timestamps
    end
  end
end
