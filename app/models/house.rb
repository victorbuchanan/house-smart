class House < ActiveRecord::Base
  # attr_accessible :title, :body

   has_one :property, :as => :propertible, :dependent => :destroy 
end
