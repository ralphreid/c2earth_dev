require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :project_number_id => 1,
        :project_manager_id => 2,
        :structure_type_id => 3,
        :project_prefix_id => 4,
        :investigation_type_id => 5,
        :fault_id => 6,
        :vendor_id => 7,
        :client_type_id => 8,
        :insurance_company_id => 9,
        :client_id => 10,
        :site_id => 11,
        :stakeholder_id => 12,
        :name => "Name",
        :name_alternate => "Name Alternate",
        :description => "MyText",
        :proposal_number => "Proposal Number",
        :notes => "Notes",
        :insurance_policy_number => "Insurance Policy Number",
        :insurance_notes => "MyText",
        :bill_name => "Bill Name",
        :bill_attention => "Bill Attention",
        :bill_address => "Bill Address",
        :bill_city => "Bill City",
        :bill_state => "Bill State",
        :bill_zip => "Bill Zip",
        :bad_pay_history => "MyText"
      ),
      stub_model(Project,
        :project_number_id => 1,
        :project_manager_id => 2,
        :structure_type_id => 3,
        :project_prefix_id => 4,
        :investigation_type_id => 5,
        :fault_id => 6,
        :vendor_id => 7,
        :client_type_id => 8,
        :insurance_company_id => 9,
        :client_id => 10,
        :site_id => 11,
        :stakeholder_id => 12,
        :name => "Name",
        :name_alternate => "Name Alternate",
        :description => "MyText",
        :proposal_number => "Proposal Number",
        :notes => "Notes",
        :insurance_policy_number => "Insurance Policy Number",
        :insurance_notes => "MyText",
        :bill_name => "Bill Name",
        :bill_attention => "Bill Attention",
        :bill_address => "Bill Address",
        :bill_city => "Bill City",
        :bill_state => "Bill State",
        :bill_zip => "Bill Zip",
        :bad_pay_history => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Alternate".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Proposal Number".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Insurance Policy Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Bill Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bill Attention".to_s, :count => 2
    assert_select "tr>td", :text => "Bill Address".to_s, :count => 2
    assert_select "tr>td", :text => "Bill City".to_s, :count => 2
    assert_select "tr>td", :text => "Bill State".to_s, :count => 2
    assert_select "tr>td", :text => "Bill Zip".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
