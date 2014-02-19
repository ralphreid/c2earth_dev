require 'spec_helper'

describe "stakeholders/show" do
  before(:each) do
    @stakeholder = assign(:stakeholder, stub_model(Stakeholder,
      :stakeholder_company_id => 1,
      :name => "Name",
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
