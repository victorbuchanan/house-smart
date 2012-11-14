require 'spec_helper'

describe "contractor_features/show" do
  before(:each) do
    @contractor_feature = assign(:contractor_feature, stub_model(ContractorFeature,
      :company_id => 1,
      :feature_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
