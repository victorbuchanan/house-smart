require 'spec_helper'

describe "contractor_features/index" do
  before(:each) do
    assign(:contractor_features, [
      stub_model(ContractorFeature,
        :company_id => 1,
        :feature_id => 2
      ),
      stub_model(ContractorFeature,
        :company_id => 1,
        :feature_id => 2
      )
    ])
  end

  it "renders a list of contractor_features" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
