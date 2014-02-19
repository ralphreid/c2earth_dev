require 'spec_helper'

describe "stakeholder_companies/show" do
  before(:each) do
    @stakeholder_company = assign(:stakeholder_company, stub_model(StakeholderCompany,
      :takeholder_company_type_id => 1,
      :company_name => "Company Name",
      :contact => "Contact",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 2,
      :phone => "Phone",
      :fax => "Fax",
      :email => "Email",
      :website => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Company Name/)
    rendered.should match(/Contact/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/2/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
