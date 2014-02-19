require 'spec_helper'

describe "stakeholder_company_types/edit" do
  before(:each) do
    @stakeholder_company_type = assign(:stakeholder_company_type, stub_model(StakeholderCompanyType,
      :takeholder_company_type => "MyString"
    ))
  end

  it "renders the edit stakeholder_company_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stakeholder_company_type_path(@stakeholder_company_type), "post" do
      assert_select "input#stakeholder_company_type_takeholder_company_type[name=?]", "stakeholder_company_type[takeholder_company_type]"
    end
  end
end
