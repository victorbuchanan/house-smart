class Professional < ActiveRecord::Base
  attr_accessible :area_of_service, :company_name, :company_num, :email, :fax, :latitude, :longitude, :phonenumber, :ptype

  ##associations
  belongs_to :hire_able

end




