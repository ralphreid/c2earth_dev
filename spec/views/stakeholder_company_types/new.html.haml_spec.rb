require 'spec_helper'

describe "stakeholder_company_types/new" do
  before(:each) do
    assign(:stakeholder_company_type, stub_model(StakeholderCompanyType,
      :takeholder_company_type => "MyString"
    ).as_new_record)
  end

  it "renders new stakeholder_company_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stakeholder_company_types_path, "post" do
      assert_select "input#stakeholder_company_type_takeholder_company_type[name=?]", "stakeholder_company_type[takeholder_company_type]"
    end
  end
end
