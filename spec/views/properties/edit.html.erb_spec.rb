require 'spec_helper'

describe "properties/edit" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :lot_size => "9.99",
      :propertible_id => 1,
      :propertible_type => "MyString"
    ))
  end

  it "renders the edit property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => properties_path(@property), :method => "post" do
      assert_select "input#property_lot_size", :name => "property[lot_size]"
      assert_select "input#property_propertible_id", :name => "property[propertible_id]"
      assert_select "input#property_propertible_type", :name => "property[propertible_type]"
    end
  end
end
