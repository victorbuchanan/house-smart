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



  #---------search-------------------

  def self.all_properties_of_type(type)
    properties = Property.order(&:id)
    if (Property.all.collect(&:propertible_type).uniq.include? type)
      properties = properties.where(propertible_type: type)
    end
    properties
  end




  def self.search_properties(options={})
 #-------------
 #  properties = properties.near(criteria['address']) if criteria['address'] && !criteria['address'].empty?

   properties

  end

end

