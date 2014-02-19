# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140219023530) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "work_phone"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "fax_phone"
    t.string   "email"
    t.string   "address_alternate"
    t.string   "city_alternate"
    t.string   "state_alternate"
    t.integer  "zip_alternate"
    t.string   "work_phone_alternate"
    t.string   "home_phone_alternate"
    t.string   "cell_phone_alternate"
    t.string   "fax_phone_alternate"
    t.string   "email_alternate"
    t.text     "notes"
    t.string   "type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "project_number_id"
    t.integer  "project_manager_id"
    t.integer  "structure_type_id"
    t.integer  "project_prefix_id"
    t.integer  "investigation_type_id"
    t.integer  "fault_id"
    t.integer  "vendor_id"
    t.integer  "client_type_id"
    t.integer  "insurance_company_id"
    t.integer  "client_id"
    t.integer  "site_id"
    t.integer  "stakeholder_id"
    t.string   "name"
    t.string   "name_alternate"
    t.text     "description"
    t.date     "proposal_date"
    t.string   "proposal_number"
    t.date     "report_date"
    t.string   "notes"
    t.string   "insurance_policy_number"
    t.text     "insurance_notes"
    t.string   "bill_name"
    t.string   "bill_attention"
    t.string   "bill_address"
    t.string   "bill_city"
    t.string   "bill_state"
    t.string   "bill_zip"
    t.text     "bad_pay_history"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "number"
    t.string   "address"
    t.string   "city"
    t.string   "county"
    t.text     "loc_page"
    t.decimal  "loc_longitude", :precision => 10, :scale => 0
    t.decimal  "loc_latitude",  :precision => 10, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "stakeholder_companies", :force => true do |t|
    t.integer  "takeholder_company_type_id"
    t.string   "company_name"
    t.string   "contact"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.text     "website"
    t.text     "notes"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stakeholder_company_types", :force => true do |t|
    t.string   "takeholder_company_type"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "stakeholders", :force => true do |t|
    t.integer  "stakeholder_company_id"
    t.string   "name"
    t.text     "info"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
