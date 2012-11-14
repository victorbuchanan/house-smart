require 'spec_helper'

describe "realtors/edit" do
  before(:each) do
    @realtor = assign(:realtor, stub_model(Realtor))
  end

  it "renders the edit realtor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => realtors_path(@realtor), :method => "post" do
    end
  end
end
