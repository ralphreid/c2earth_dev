require 'spec_helper'

describe "structures/index" do
  before(:each) do
    assign(:structures, [
      stub_model(Structure,
        :structure => "Structure"
      ),
      stub_model(Structure,
        :structure => "Structure"
      )
    ])
  end

  it "renders a list of structures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Structure".to_s, :count => 2
  end
end
