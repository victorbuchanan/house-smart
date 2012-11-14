require 'spec_helper'

describe "contractor_features/new" do
  before(:each) do
    assign(:contractor_feature, stub_model(ContractorFeature,
      :company_id => 1,
      :feature_id => 1
    ).as_new_record)
  end

  it "renders new contractor_feature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractor_features_path, :method => "post" do
      assert_select "input#contractor_feature_company_id", :name => "contractor_feature[company_id]"
      assert_select "input#contractor_feature_feature_id", :name => "contractor_feature[feature_id]"
    end
  end
end
