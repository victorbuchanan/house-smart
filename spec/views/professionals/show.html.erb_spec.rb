require 'spec_helper'

describe "professionals/show" do
  before(:each) do
    @professional = assign(:professional, stub_model(Professional,
      :area_of_service => "Area Of Service",
      :longitude => 1.5,
      :latitude => 1.5,
      :company_name => "Company Name",
      :email => "Email",
      :phonenumber => "Phonenumber",
      :fax => "Fax",
      :ptype => "Ptype",
      :company_num => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Area Of Service/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Company Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phonenumber/)
    rendered.should match(/Fax/)
    rendered.should match(/Ptype/)
    rendered.should match(/1/)
  end
end
