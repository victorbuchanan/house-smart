require 'spec_helper'

describe "area_base_prices/index" do
  before(:each) do
    assign(:area_base_prices, [
      stub_model(AreaBasePrice,
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
      ),
      stub_model(AreaBasePrice,
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
      )
    ])
  end

  it "renders a list of area_base_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Area Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
  end
end
