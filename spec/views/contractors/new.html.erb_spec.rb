require 'spec_helper'

describe "contractors/new" do
  before(:each) do
    assign(:contractor, stub_model(Contractor,
      :specialty => "MyString"
    ).as_new_record)
  end

  it "renders new contractor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contractors_path, :method => "post" do
      assert_select "input#contractor_specialty", :name => "contractor[specialty]"
    end
  end
end
