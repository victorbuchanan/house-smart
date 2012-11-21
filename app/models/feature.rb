class Feature < ActiveRecord::Base
  attr_accessible :name, :value, :feature_id, :upgradeable

  has_many :contractor_features
  has_many :contractors, :through => :contractor_features


  # upgradeable features - house_current_features.
  # parameters:
  #   current_house_features_names: an array of feature names of type string
  # output: missing_upgradeable_feature objects
  scope :missing_upgradeable_features, lambda{|current_house_features_names|
                                       where(upgradeable: true).
                                       where(["name NOT IN (?)", current_house_features_names])}
end
