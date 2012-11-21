module ApplicationHelper
  def calculatePrice(house ,features_list)

    if house.nil?
     return 0;
    end

    value = 0
    featureValue = 0

    if features_list
      features_list.each do |f|
        featureValue += Feature.find_by_name(f).value
      end
    end

    areaBasePrice = AreaBasePrice.find_by_area_name(house.living_area)

    if areaBasePrice.nil?
      return 0
    end


    value += areaBasePrice.price_per_sqft * house.square_footage
    value += areaBasePrice.price_per_lot * house.property.lot_size
    value -= areaBasePrice.price_per_year * (areaBasePrice.avg_year - 2000)#house.year_built)
    value += areaBasePrice.price_per_bed * house.bedrooms
    value += areaBasePrice.price_per_bath * house.bathrooms

    return value + featureValue
  end
end
