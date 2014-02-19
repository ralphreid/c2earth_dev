require 'spec_helper'

describe "stakeholders/index" do
  before(:each) do
    assign(:stakeholders, [
      stub_model(Stakeholder,
        :stakeholder_company_id => 1,
        :name => "Name",
        :info => "MyText"
      ),
      stub_model(Stakeholder,
        :stakeholder_company_id => 1,
        :name => "Name",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of stakeholders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
