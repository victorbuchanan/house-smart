require 'spec_helper'

describe Feature do

  before(:each) do
    @contractor = Contractor.create!(:specialty =>"kitchen")
    @feature = Feature.create!(:name =>"floor")

    @feature.contractors << @contractor

    @contractor.save
  end

  it "should have created a relationship" do
    ContractorFeature.first.contractor.should == @contractor
    ContractorFeature.first.feature.should == @feature
  end


  context "validations" do
    [:name, :value].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Feature.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end
end
