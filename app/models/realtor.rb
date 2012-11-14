class Realtor < ActiveRecord::Base


  ## associations
  has_one :professional, :as => :hire_able


end
