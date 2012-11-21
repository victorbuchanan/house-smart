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

  validates_numericality_of :bedrooms, :only_integer => true,
                            :message => ": Number of bedrooms must be a number"
  validates_inclusion_of :bedrooms, :in => 1..20,
                         :message => ": Number of bedrooms must be between 1 and 20"

  validates_numericality_of :bathrooms, :only_integer => true,
                            :message => ": Number of bathrooms must be a number"
  validates_inclusion_of :bathrooms, :in => 1..20,
                         :message => ": Number of bathrooms must be between 1 and 20"

  validates_inclusion_of :living_area, :in => AreaBasePrice.all.collect(&:area_name),
                       :message => ": location not found"

  validates_numericality_of :square_footage, :only_integer => true,
                              :message => ": Square footage must be a number"

   validates_numericality_of :year_built, :only_integer => true,
                             :message => ": Build year must be a number"
   validates_inclusion_of :year_built, :in => 1980..Time.now.year,
                             :message => ": Build year must be greater than 1980"

  ## associations
   has_one :property, :as => :propertible, :dependent => :destroy
   accepts_nested_attributes_for :property, :allow_destroy => true

  ## for photos
   has_attached_file :photo
   attr_accessible :photo

end
