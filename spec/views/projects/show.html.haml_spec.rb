require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
    rendered.should match(/Name/)
    rendered.should match(/Name Alternate/)
    rendered.should match(/MyText/)
    rendered.should match(/Proposal Number/)
    rendered.should match(/Notes/)
    rendered.should match(/Insurance Policy Number/)
    rendered.should match(/MyText/)
    rendered.should match(/Bill Name/)
    rendered.should match(/Bill Attention/)
    rendered.should match(/Bill Address/)
    rendered.should match(/Bill City/)
    rendered.should match(/Bill State/)
    rendered.should match(/Bill Zip/)
    rendered.should match(/MyText/)
  end
end
