class Contractor < ActiveRecord::Base
   attr_accessible :specialty, :contractor_id

   ## associations
   has_one :professional, :as => :hire_able
   has_many :contractor_features
   has_many :features, :through => :contractor_features


end