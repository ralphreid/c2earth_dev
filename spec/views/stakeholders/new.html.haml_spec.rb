require 'spec_helper'

describe "stakeholders/new" do
  before(:each) do
    assign(:stakeholder, stub_model(Stakeholder,
      :stakeholder_company_id => 1,
      :name => "MyString",
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new stakeholder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stakeholders_path, "post" do
      assert_select "input#stakeholder_stakeholder_company_id[name=?]", "stakeholder[stakeholder_company_id]"
      assert_select "input#stakeholder_name[name=?]", "stakeholder[name]"
      assert_select "textarea#stakeholder_info[name=?]", "stakeholder[info]"
    end
  end
end
