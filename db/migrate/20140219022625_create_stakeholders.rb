class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.integer :stakeholder_company_id
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
