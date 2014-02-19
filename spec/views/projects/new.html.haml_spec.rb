require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :project_number_id => 1,
      :project_manager_id => 1,
      :structure_type_id => 1,
      :project_prefix_id => 1,
      :investigation_type_id => 1,
      :fault_id => 1,
      :vendor_id => 1,
      :client_type_id => 1,
      :insurance_company_id => 1,
      :client_id => 1,
      :site_id => 1,
      :stakeholder_id => 1,
      :name => "MyString",
      :name_alternate => "MyString",
      :description => "MyText",
      :proposal_number => "MyString",
      :notes => "MyString",
      :insurance_policy_number => "MyString",
      :insurance_notes => "MyText",
      :bill_name => "MyString",
      :bill_attention => "MyString",
      :bill_address => "MyString",
      :bill_city => "MyString",
      :bill_state => "MyString",
      :bill_zip => "MyString",
      :bad_pay_history => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_project_number_id[name=?]", "project[project_number_id]"
      assert_select "input#project_project_manager_id[name=?]", "project[project_manager_id]"
      assert_select "input#project_structure_type_id[name=?]", "project[structure_type_id]"
      assert_select "input#project_project_prefix_id[name=?]", "project[project_prefix_id]"
      assert_select "input#project_investigation_type_id[name=?]", "project[investigation_type_id]"
      assert_select "input#project_fault_id[name=?]", "project[fault_id]"
      assert_select "input#project_vendor_id[name=?]", "project[vendor_id]"
      assert_select "input#project_client_type_id[name=?]", "project[client_type_id]"
      assert_select "input#project_insurance_company_id[name=?]", "project[insurance_company_id]"
      assert_select "input#project_client_id[name=?]", "project[client_id]"
      assert_select "input#project_site_id[name=?]", "project[site_id]"
      assert_select "input#project_stakeholder_id[name=?]", "project[stakeholder_id]"
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_name_alternate[name=?]", "project[name_alternate]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_proposal_number[name=?]", "project[proposal_number]"
      assert_select "input#project_notes[name=?]", "project[notes]"
      assert_select "input#project_insurance_policy_number[name=?]", "project[insurance_policy_number]"
      assert_select "textarea#project_insurance_notes[name=?]", "project[insurance_notes]"
      assert_select "input#project_bill_name[name=?]", "project[bill_name]"
      assert_select "input#project_bill_attention[name=?]", "project[bill_attention]"
      assert_select "input#project_bill_address[name=?]", "project[bill_address]"
      assert_select "input#project_bill_city[name=?]", "project[bill_city]"
      assert_select "input#project_bill_state[name=?]", "project[bill_state]"
      assert_select "input#project_bill_zip[name=?]", "project[bill_zip]"
      assert_select "textarea#project_bad_pay_history[name=?]", "project[bad_pay_history]"
    end
  end
end
