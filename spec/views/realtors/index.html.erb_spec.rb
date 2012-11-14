require 'spec_helper'

describe "realtors/index" do
  before(:each) do
    assign(:realtors, [
      stub_model(Realtor),
      stub_model(Realtor)
    ])
  end

  it "renders a list of realtors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
