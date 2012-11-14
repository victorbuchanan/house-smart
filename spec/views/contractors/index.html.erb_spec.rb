require 'spec_helper'

describe "contractors/index" do
  before(:each) do
    assign(:contractors, [
      stub_model(Contractor,
        :specialty => "Specialty"
      ),
      stub_model(Contractor,
        :specialty => "Specialty"
      )
    ])
  end

  it "renders a list of contractors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Specialty".to_s, :count => 2
  end
end
