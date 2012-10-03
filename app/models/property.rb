class Property < ActiveRecord::Base
  attr_accessible :lot_size, :propertible_id, :propertible_type

    belongs_to :propertible, polymorphic: true

end
