require 'spec_helper'

describe "AreaBasePrices" do
  describe "GET /area_base_prices" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get area_base_prices_path
      response.status.should be(200)
    end
  end
end
