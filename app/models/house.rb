class House < ActiveRecord::Base
   attr_accessible :style, :dwelling_type, :bedrooms, :bathrooms, :living_area, :square_footage, :year_built, :property_attributes
   validates :style, :bedrooms, :bathrooms, :living_area, :square_footage, :year_built, presence: true, allow_blank: false

  #CONSTANTS
  DWELLING_TYPE= ["1 1/2 story", "2 story", "3 story", "bungalow", "one level",
                  "one level", "split level"]


  STYLE= ["Apartment", "Detached", "Row unit", "Semi Detached"]
 #-----------------------------------------------------------------



  validates :style, inclusion: STYLE
  validates :dwelling_type, inclusion: DWELLING_TYPE



  ## associations
   has_one :property, :as => :propertible, :dependent => :destroy 
   accepts_nested_attributes_for :property, :allow_destroy => true

  ## for photos
   has_attached_file :photo
   attr_accessible :photo

end
