require 'spec_helper'

describe "area_base_prices/new" do
  before(:each) do
    assign(:area_base_price, stub_model(AreaBasePrice,
      :area_name => "MyString",
      :avg_sqft => 1,
      :avg_lot => 1,
      :avg_year => 1,
      :avg_bed => 1,
      :avg_bath => 1,
      :price_per_sqft => 1,
      :price_per_lot => 1,
      :price_per_year => 1,
      :price_per_bed => 1,
      :price_per_bath => 1
    ).as_new_record)
  end

  it "renders new area_base_price form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => area_base_prices_path, :method => "post" do
      assert_select "input#area_base_price_area_name", :name => "area_base_price[area_name]"
      assert_select "input#area_base_price_avg_sqft", :name => "area_base_price[avg_sqft]"
      assert_select "input#area_base_price_avg_lot", :name => "area_base_price[avg_lot]"
      assert_select "input#area_base_price_avg_year", :name => "area_base_price[avg_year]"
      assert_select "input#area_base_price_avg_bed", :name => "area_base_price[avg_bed]"
      assert_select "input#area_base_price_avg_bath", :name => "area_base_price[avg_bath]"
      assert_select "input#area_base_price_price_per_sqft", :name => "area_base_price[price_per_sqft]"
      assert_select "input#area_base_price_price_per_lot", :name => "area_base_price[price_per_lot]"
      assert_select "input#area_base_price_price_per_year", :name => "area_base_price[price_per_year]"
      assert_select "input#area_base_price_price_per_bed", :name => "area_base_price[price_per_bed]"
      assert_select "input#area_base_price_price_per_bath", :name => "area_base_price[price_per_bath]"
    end
  end
end
