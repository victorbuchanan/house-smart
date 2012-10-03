require 'spec_helper'

describe "features/new" do
  before(:each) do
    assign(:feature, stub_model(Feature,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new feature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => features_path, :method => "post" do
      assert_select "input#feature_name", :name => "feature[name]"
    end
  end
end
