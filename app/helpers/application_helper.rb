module ApplicationHelper
  def calculatePrice(area,lot_size,sqft,year_built, num_bed, num_bath,features_list)

    value = 0
    featureValue = 0
    features_list.each do |f|
      featureValue += Feature.find_by_name(f).value
    end

    @areaBasePrice = AreaBasePrice.find_by_area_name(area);

    value += @areaBasePrice.price_per_sqft * sqft
    value += @areaBasePrice.price_per_lot * lot_size
    value -= @areaBasePrice.price_per_year * (@areaBasePrice.avg_year - year_built)
    value += @areaBasePrice.price_per_bed * num_bed
    value += @areaBasePrice.price_per_bath * num_bath

    return value + featureValue
  end
end
