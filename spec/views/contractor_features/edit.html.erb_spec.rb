require 'spec_helper'

describe "contractor_features/edit" do
  before(:each) do
    @contractor_feature = assign(:contractor_feature, stub_model(ContractorFeature,
      :company_id => 1,
      :feature_id => 1
    ))
  end

  it "renders the edit contractor_feature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractor_features_path(@contractor_feature), :method => "post" do
      assert_select "input#contractor_feature_company_id", :name => "contractor_feature[company_id]"
      assert_select "input#contractor_feature_feature_id", :name => "contractor_feature[feature_id]"
    end
  end
end
