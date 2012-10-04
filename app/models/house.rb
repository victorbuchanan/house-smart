class House < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :property_attributes

   has_one :property, :as => :propertible, :dependent => :destroy 
   accepts_nested_attributes_for :property, :allow_destroy => true
end
