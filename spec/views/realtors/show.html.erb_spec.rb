require 'spec_helper'

describe "realtors/show" do
  before(:each) do
    @realtor = assign(:realtor, stub_model(Realtor))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
