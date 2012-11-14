require 'spec_helper'

describe "contractors/edit" do
  before(:each) do
    @contractor = assign(:contractor, stub_model(Contractor,
      :specialty => "MyString"
    ))
  end

  it "renders the edit contractor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractors_path(@contractor), :method => "post" do
      assert_select "input#contractor_specialty", :name => "contractor[specialty]"
    end
  end
end
