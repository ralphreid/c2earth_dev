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

ActiveRecord::Schema.define(:version => 20140219005806) do

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

end
