require 'spec_helper'

describe House do
  pending "add some examples to (or delete) #{__FILE__}"

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
end
