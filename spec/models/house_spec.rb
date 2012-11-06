require 'spec_helper'

describe House do

  context "associations" do
    it "should extend Property" do  #polymorphism
      House.new.should respond_to(:property)
    end

    it "should destroy the associated property class after destroying itself" do
      house= FactoryGirl.build(:house)
      house.save
      House.all.size.should == 1
      Property.all.size.should == 1
      House.first.destroy
      Property.all.size.should == 0
    end

  end


  context "constants" do
    it "DWELLING_TYPE array should contain the following values" do
        
        EXPECTED= ["1 1/2 story", "2 story", "3 story", "bungalow", "one level",
                   "one level", "split level"]
        
        House::DWELLING_TYPE.size.should == EXPECTED.size
        EXPECTED.each{|type| (House::DWELLING_TYPE.include? type).should be_true}
    end

    it "STYLE array should contain the following values" do
        
        EXPECTED= ["Apartment", "Detached", "Row unit", "Semi Detached"]
        
        House::STYLE.size.should == EXPECTED.size
        EXPECTED.each{|type| (House::STYLE.include? type).should be_true}
    end
  end


  context "validations" do

     [:style, :dwelling_type, :bedrooms, :bathrooms, :living_area, :lot_size, :year_build, :property_attributes].each do |attr|
       it "#{attr} may be accessed and changed" do
         expect do
           House.new(attr => nil)
         end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
       end
     end


     [:style, :dwelling_type].each do |attr|
        it "#{attr} value should be one of values in #{attr.to_s.upcase} constant" do
        house = FactoryGirl.build(:house, attr => "wrong value")
        house.should_not be_valid
        house.errors.get(attr).should_not be_nil


        name_of_constant = attr.to_s.upcase # eg, :style => 'style' => 'STYLE'
        array_of_valid_values = House.const_get(name_of_constant)
        house.attributes= {attr => array_of_valid_values.sample}
        house.should be_valid
      end
    end
  end



end

