require 'spec_helper'

describe "stakeholder_company_types/index" do
  before(:each) do
    assign(:stakeholder_company_types, [
      stub_model(StakeholderCompanyType,
        :takeholder_company_type => "Takeholder Company Type"
      ),
      stub_model(StakeholderCompanyType,
        :takeholder_company_type => "Takeholder Company Type"
      )
    ])
  end

  it "renders a list of stakeholder_company_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Takeholder Company Type".to_s, :count => 2
  end
end
