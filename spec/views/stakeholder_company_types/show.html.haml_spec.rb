require 'spec_helper'

describe "stakeholder_company_types/show" do
  before(:each) do
    @stakeholder_company_type = assign(:stakeholder_company_type, stub_model(StakeholderCompanyType,
      :takeholder_company_type => "Takeholder Company Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Takeholder Company Type/)
  end
end
