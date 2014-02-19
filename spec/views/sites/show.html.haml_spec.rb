require 'spec_helper'

describe "sites/show" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :number => "Number",
      :address => "Address",
      :city => "City",
      :county => "County",
      :loc_page => "MyText",
      :loc_longitude => "9.99",
      :loc_latitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/County/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
