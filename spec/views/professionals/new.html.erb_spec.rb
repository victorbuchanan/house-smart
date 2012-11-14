require 'spec_helper'

describe "professionals/new" do
  before(:each) do
    assign(:professional, stub_model(Professional,
      :area_of_service => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :company_name => "MyString",
      :email => "MyString",
      :phonenumber => "MyString",
      :fax => "MyString",
      :ptype => "MyString",
      :company_num => 1
    ).as_new_record)
  end

  it "renders new professional form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professionals_path, :method => "post" do
      assert_select "input#professional_area_of_service", :name => "professional[area_of_service]"
      assert_select "input#professional_longitude", :name => "professional[longitude]"
      assert_select "input#professional_latitude", :name => "professional[latitude]"
      assert_select "input#professional_company_name", :name => "professional[company_name]"
      assert_select "input#professional_email", :name => "professional[email]"
      assert_select "input#professional_phonenumber", :name => "professional[phonenumber]"
      assert_select "input#professional_fax", :name => "professional[fax]"
      assert_select "input#professional_ptype", :name => "professional[ptype]"
      assert_select "input#professional_company_num", :name => "professional[company_num]"
    end
  end
end
