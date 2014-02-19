class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :number
      t.string :address
      t.string :city
      t.string :county
      t.text :loc_page
      t.decimal :loc_longitude
      t.decimal :loc_latitude

      t.timestamps
    end
  end
end
