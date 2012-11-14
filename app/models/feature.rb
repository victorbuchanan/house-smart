class Feature < ActiveRecord::Base
  attr_accessible :name, :value, :feature_id

  has_many :contractor_features
  has_many :contractors, :through => :contractor_features
end
