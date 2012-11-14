require 'spec_helper'

describe "realtors/new" do
  before(:each) do
    assign(:realtor, stub_model(Realtor).as_new_record)
  end

  it "renders new realtor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => realtors_path, :method => "post" do
    end
  end
end
