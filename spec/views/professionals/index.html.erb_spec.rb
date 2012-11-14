require 'spec_helper'

describe "professionals/index" do
  before(:each) do
    assign(:professionals, [
      stub_model(Professional,
        :area_of_service => "Area Of Service",
        :longitude => 1.5,
        :latitude => 1.5,
        :company_name => "Company Name",
        :email => "Email",
        :phonenumber => "Phonenumber",
        :fax => "Fax",
        :ptype => "Ptype",
        :company_num => 1
      ),
      stub_model(Professional,
        :area_of_service => "Area Of Service",
        :longitude => 1.5,
        :latitude => 1.5,
        :company_name => "Company Name",
        :email => "Email",
        :phonenumber => "Phonenumber",
        :fax => "Fax",
        :ptype => "Ptype",
        :company_num => 1
      )
    ])
  end

  it "renders a list of professionals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Area Of Service".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phonenumber".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Ptype".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
