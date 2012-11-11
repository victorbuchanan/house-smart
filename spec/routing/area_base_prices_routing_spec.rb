require "spec_helper"

describe AreaBasePricesController do
  describe "routing" do

    it "routes to #index" do
      get("/area_base_prices").should route_to("area_base_prices#index")
    end

    it "routes to #new" do
      get("/area_base_prices/new").should route_to("area_base_prices#new")
    end

    it "routes to #show" do
      get("/area_base_prices/1").should route_to("area_base_prices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/area_base_prices/1/edit").should route_to("area_base_prices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/area_base_prices").should route_to("area_base_prices#create")
    end

    it "routes to #update" do
      put("/area_base_prices/1").should route_to("area_base_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/area_base_prices/1").should route_to("area_base_prices#destroy", :id => "1")
    end

  end
end
