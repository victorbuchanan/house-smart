require 'spec_helper'

describe Property do
  before(:each) do
    @valid_property_attrs = FactoryGirl.attributes_for :property
  end


  context "associations" do

    it "is a polymorphic object" do
        house = FactoryGirl.build(:house)
        house.property.should be_kind_of Property
        house.save
        Property.all.size.should == 1
        Property.first.propertible_type.should == "House"
        Property.first.propertible_id.should == 1    #
    end
  end


  context "validations" do
    [:lot_size].each do |attr|
      it "#{attr} cannot be nil or blank" do
        attr = attr.to_sym
        property = FactoryGirl.build(:property, attr => "")
        property.should_not be_valid
        property.errors.get(attr).should_not be_nil

        valid_value = @valid_property_attrs[attr]
        property.attributes= {attr => valid_value}
        property.should be_valid

      end
    end

    [:lot_size, :address, :latitude, :longitude].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Property.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end

    it"entering an address should populate the latitude and longitude accordingly" do
      property = FactoryGirl.build(:property, address: "University of Ottawa")
      property.latitude.should be_nil
      property.longitude.should be_nil
      property.save
      property.latitude.should_not be_nil
      property.longitude.should_not be_nil
    end
  end

  context "geocoding" do
    it "should repopulate the latitude and longitude after updating the address " do
      property = FactoryGirl.build(:property, address: "University of Ottawa")
      property.save
      uOttawa_latitude = property.latitude
      uOttawa_longitude = property.longitude
      property.address = "Carleton University, Ottawa"
      property.save
      property.latitude.should_not == uOttawa_latitude
      property.longitude.should_not == uOttawa_longitude
    end

    it "should search and find properties that are nearby given an address and a radius" do

       # initialization, saving in DB
       uOttawa = FactoryGirl.build(:property, address: "University of Ottawa")
       carletonU = FactoryGirl.build(:property, address: "Carleton University")
       uToronto = FactoryGirl.build(:property, address: "University of Toronto")
       [uOttawa,carletonU,uToronto].each{|u| u.save}
       Property.all.size.should == 3

       #testing the method
       list_of_nearby_properties= Property.nearby_properties(uOttawa.address ,50) # 50 miles or Km?
       list_of_nearby_properties.should_not be_nil
       list_of_nearby_properties.length.should == 2
       list_of_nearby_properties[0].should == uOttawa
       list_of_nearby_properties[1].should == carletonU



    end

  end







  context "search properties" do
    before(:each) do
      @empty_adv_search_form = {"type"=>"", "address"=>"" }
      5.times{ ([true, false].sample)? FactoryGirl.create(:property): FactoryGirl.create(:house)}  # this line may be modified in future
      @total_houses_in_db = House.all.size
      @total_properties_in_db = Property.all.size
    end

    it "scope of_type(type) should output properties that has :propertible_type equal to the given type " do  # if user wants houses, search for houses only
       #test valid input, scenario 1: property_type not in DB
      search_results = Property.of_type("anything that is not a model")
      search_results.size.should == 0

      #test valid input, scenario 2: show properties of specific type
      search_results = Property.of_type("House")
      search_results.size.should == @total_houses_in_db
    end

    it "scope with_lot_size(lower_bound, upper_bound) should return valid value " do
      Property.all.size.should == 5
      EXPECTED = Property.where("lot_size >= 500 AND lot_size <= 2500")
      ACTUAL = Property.with_lot_size(500, 2500)
      ACTUAL.size.should == EXPECTED.size
      ACTUAL.each{|p| EXPECTED.include?(p).should be_true}
    end

    it "method search_properties(options={}) should call (search scopes and nearby_properties method)  and return the intesection of results" do
      Property.all.size.should == 5
      exp_result = Property.of_type("House")
      exp_result = exp_result.with_lot_size(500, 2000)

      ACTUAL = Property.search_properties({"type"=>"House", "lot_size_lower"=> "500", "lot_size_upper"=> "2000"})

      ACTUAL.size.should == exp_result.size
      ACTUAL.each{|p| exp_result.include?(p).should be_true}


    end





  end

end




