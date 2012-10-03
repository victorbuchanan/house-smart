require 'spec_helper'

describe "features/index" do
  before(:each) do
    assign(:features, [
      stub_model(Feature,
        :name => "Name"
      ),
      stub_model(Feature,
        :name => "Name"
      )
    ])
  end

  it "renders a list of features" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
