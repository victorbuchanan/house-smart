require 'csv'


namespace :populate do

  desc "populates AreaVasePrice table with new data from csv file after insuring it is empty"
  task :basePrices, [:destroy_all] => [:environment] do |t, args|
    AreaBasePrice.destroy_all  if  args[:destroy_all]
    file = "lib/assets/basePriceData.csv"
    CSV.foreach(file, :headers => true) do |row|
      AreaBasePrice.create(:area_name => row[0], :avg_sqft => row[1], :avg_lot => row[2], :avg_year => row[3], :avg_bed => row[4], :avg_bath => row[5], :price_per_sqft => row[6], :price_per_lot => row[7], :price_per_year => row[8], :price_per_bed => row[9], :price_per_bath => row[10])
    end
  end

end


