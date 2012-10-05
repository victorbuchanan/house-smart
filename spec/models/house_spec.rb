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




  context "constancts" do
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


end
