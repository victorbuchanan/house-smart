class Property < ActiveRecord::Base
  attr_accessible :lot_size, :propertible



  #-- Validations ------

  validates_presence_of :lot_size, allow_blank: false




  #-- Associations ------
  belongs_to :propertible, polymorphic: true

end
