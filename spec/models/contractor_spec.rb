require 'spec_helper'

describe Contractor do

  before(:each) do
    @contractor = Contractor.create!(:specialty =>"kitchen")
    @feature = Feature.create!(:name =>"floor")

    @contractor.features << @feature

    @feature.save
  end

  it "should have created a relationship" do
    ContractorFeature.first.contractor.should == @contractor
    ContractorFeature.first.feature.should == @feature
  end

  describe Contractor do
    context "validations" do
      [:specialty].each do |attr|
        it "#{attr} may be accessed and changed" do
          expect do
            Contractor.new(attr => nil)
          end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
        end
      end
    end
  end

  describe Contractor do
    context "associations" do
      it "should extend Professional" do  #polymorphism
        Contractor.new.should respond_to(:professional)
      end
    end
  end



  end
