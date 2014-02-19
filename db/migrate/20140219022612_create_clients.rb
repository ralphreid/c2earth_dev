class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :work_phone
      t.string :home_phone
      t.string :cell_phone
      t.string :fax_phone
      t.string :email
      t.string :address_alternate
      t.string :city_alternate
      t.string :state_alternate
      t.integer :zip_alternate
      t.string :work_phone_alternate
      t.string :home_phone_alternate
      t.string :cell_phone_alternate
      t.string :fax_phone_alternate
      t.string :email_alternate
      t.text :notes
      t.string :type

      t.timestamps
    end
  end
end
