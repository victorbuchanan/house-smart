require 'spec_helper'

describe "area_base_prices/show" do
  before(:each) do
    @area_base_price = assign(:area_base_price, stub_model(AreaBasePrice,
      :area_name => "Area Name",
      :avg_sqft => 1,
      :avg_lot => 2,
      :avg_year => 3,
      :avg_bed => 4,
      :avg_bath => 5,
      :price_per_sqft => 6,
      :price_per_lot => 7,
      :price_per_year => 8,
      :price_per_bed => 9,
      :price_per_bath => 10
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Area Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
  end
end
