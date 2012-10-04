class Property < ActiveRecord::Base
  attr_accessible :lot_size, :propertible

    belongs_to :propertible, polymorphic: true

end
