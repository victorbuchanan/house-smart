require 'spec_helper'

describe "properties/index" do
  before(:each) do
    assign(:properties, [
      stub_model(Property,
        :lot_size => "9.99",
        :propertible_id => 1,
        :propertible_type => "Propertible Type"
      ),
      stub_model(Property,
        :lot_size => "9.99",
        :propertible_id => 1,
        :propertible_type => "Propertible Type"
      )
    ])
  end

  it "renders a list of properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Propertible Type".to_s, :count => 2
  end
end
