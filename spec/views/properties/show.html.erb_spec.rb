require 'spec_helper'

describe "properties/show" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :lot_size => "9.99",
      :propertible_id => 1,
      :propertible_type => "Propertible Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/Propertible Type/)
  end
end
