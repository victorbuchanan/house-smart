require "spec_helper"

describe ProfessionalsController do
  describe "routing" do

    it "routes to #index" do
      get("/professionals").should route_to("professionals#index")
    end

    it "routes to #new" do
      get("/professionals/new").should route_to("professionals#new")
    end

    it "routes to #show" do
      get("/professionals/1").should route_to("professionals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/professionals/1/edit").should route_to("professionals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/professionals").should route_to("professionals#create")
    end

    it "routes to #update" do
      put("/professionals/1").should route_to("professionals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/professionals/1").should route_to("professionals#destroy", :id => "1")
    end

  end
end
