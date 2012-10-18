class Property < ActiveRecord::Base
  attr_accessible :lot_size, :propertible, :address, :latitude, :longitude



  #-- Validations ------
  validates_presence_of :lot_size, allow_blank: false




  #--- geocoder---------
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?




  #-- Associations ------
  belongs_to :propertible, polymorphic: true





  #----- methods -------------
  def self.nearby_properties(address, radius, options={}) #options not implemented.
    near(address, radius, :order => :distance)
  end

end
