require 'spec_helper'

describe "stakeholder_companies/edit" do
  before(:each) do
    @stakeholder_company = assign(:stakeholder_company, stub_model(StakeholderCompany,
      :takeholder_company_type_id => 1,
      :company_name => "MyString",
      :contact => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders the edit stakeholder_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stakeholder_company_path(@stakeholder_company), "post" do
      assert_select "input#stakeholder_company_takeholder_company_type_id[name=?]", "stakeholder_company[takeholder_company_type_id]"
      assert_select "input#stakeholder_company_company_name[name=?]", "stakeholder_company[company_name]"
      assert_select "input#stakeholder_company_contact[name=?]", "stakeholder_company[contact]"
      assert_select "input#stakeholder_company_address[name=?]", "stakeholder_company[address]"
      assert_select "input#stakeholder_company_city[name=?]", "stakeholder_company[city]"
      assert_select "input#stakeholder_company_state[name=?]", "stakeholder_company[state]"
      assert_select "input#stakeholder_company_zip[name=?]", "stakeholder_company[zip]"
      assert_select "input#stakeholder_company_phone[name=?]", "stakeholder_company[phone]"
      assert_select "input#stakeholder_company_fax[name=?]", "stakeholder_company[fax]"
      assert_select "input#stakeholder_company_email[name=?]", "stakeholder_company[email]"
      assert_select "textarea#stakeholder_company_website[name=?]", "stakeholder_company[website]"
      assert_select "textarea#stakeholder_company_notes[name=?]", "stakeholder_company[notes]"
    end
  end
end
