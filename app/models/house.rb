class House < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :property_attributes

   has_one :property, :as => :propertible, :dependent => :destroy 
   accepts_nested_attributes_for :property, :allow_destroy => true


  DWELLING_TYPE= ["1 1/2 story", "2 story", "3 story", "bungalow", "one level",
   "one level", "split level"]

  STYLE= ["Apartment", "Detached", "Row unit", "Semi Detached"]

end
