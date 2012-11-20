require "spec_helper"


describe "ApplicationHelper" do

  describe "calculatePrice" do

    it "returns 0 if house is nil" do
      value = helper.calculatePrice(nil,[])
      value.should == 0
    end

    it "returns 0 if area is not found" do

      house = House.new(:style => "Apartment", :dwelling_type =>"2 story", :bedrooms=>3, :bathrooms=>2, :living_area=>"", :square_footage=>1500, :year_built=>1990)
      value = helper.calculatePrice(house,[])
      value.should == 0
    end
    it "returns greater than 0 if there is good house information" do

      house = FactoryGirl.build(:house)

      value = helper.calculatePrice(house,[])

      value.should > 0
    end

  end
end