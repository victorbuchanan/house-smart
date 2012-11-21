require 'spec_helper'

$LOAD_PATH.unshift File.dirname(__FILE__)

require 'rake'

Rake.application.init
Rake.application.load_rakefile  # load rake tasks






describe Feature do



  context "associations" do
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
  end



  context "validations" do
    [:name, :value, :upgradeable].each do |attr|
      it "#{attr} may be accessed and changed" do
        expect do
          Feature.new(attr => nil)
        end.to_not raise_error(ActiveModel::MassAssignmentSecurity::Error)
      end
    end
  end



  context "queries" do
    it "missing_upgradeable_features should return upgradeable features that a house do not have" do
      Rake.application["populate:features"].invoke    # load data from csv

      upgradeable_features = Feature.where(upgradeable: true).collect(&:name)
      current_house_features_names = Feature.where(upgradeable: true).order("random()").limit(4).collect(&:name)

      expected_missing_upgradeable_features = upgradeable_features - current_house_features_names  # [1,2]- [1] = [2]

      actual_missing_upgradeable_features =  Feature.missing_upgradeable_features(current_house_features_names).collect(&:name)

      actual_missing_upgradeable_features.should == expected_missing_upgradeable_features



    end
  end



end
