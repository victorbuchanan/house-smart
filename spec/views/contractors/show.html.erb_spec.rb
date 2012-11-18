require 'spec_helper'

describe "contractors/show" do
  before(:each) do
    @contractor = assign(:contractor, stub_model(Contractor,
      :specialty => "Specialty"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Specialty/)
  end
end
