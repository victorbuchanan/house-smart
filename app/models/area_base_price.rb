class AreaBasePrice < ActiveRecord::Base
  attr_accessible :area_name, :avg_bath, :avg_bed, :avg_lot, :avg_sqft, :avg_year, :price_per_bath, :price_per_bed, :price_per_lot, :price_per_sqft, :price_per_year
end
