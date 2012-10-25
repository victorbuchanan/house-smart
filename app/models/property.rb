class Property < ActiveRecord::Base
  attr_accessible :lot_size, :propertible, :address, :latitude, :longitude



  #-- Validations ------
  validates_presence_of :lot_size, allow_blank: false




  #--- geocoder---------
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?




  #-- Associations ------
  belongs_to :propertible, polymorphic: true




  #-------- queries------------------

  scope :of_type, lambda {|type| where(:propertible_type => type)}

  scope :with_lot_size, lambda {|lower, upper| where(["lot_size >= ? AND lot_size <= ?", lower, upper])}

  scope :near_location, lambda {|location, radius| nearby_properties(location, radius)}





















  #----- methods -------------
  def self.nearby_properties(address, radius, options={}) #options not implemented.
    near(address, radius, :order => :distance)
  end



  #---------search-------------------



  def self.search_properties(options={})

    properties= Property.order(&:id)
    properties = properties.of_type(options["type"]) if options["type"]  && options["type"] != "All"
    properties = properties.with_lot_size(options["lot_size_lower"],options["lot_size_upper"]) if options["lot_size_lower"]  && options["lot_size_upper"]
    properties


  end

end

