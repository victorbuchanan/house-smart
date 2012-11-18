require 'csv'


namespace :populate do

  desc "populates Feature table with new data from csv file after insuring it is empty"
  task :features, [:destroy_all] => [:environment] do |t, args|
    Feature.destroy_all  if  args[:destroy_all]
    file = "lib/assets/featuresData.csv"
    CSV.foreach(file, :headers => false) do |row|
      @feature = Feature.find_by_name(row[0])
      if(@feature.nil?)
        Feature.create(:name => row[0], :value => row[1], :upgradeable => row[2])
      else
        @feature.update_attributes(:value => row[1], :upgradeable => row[2])
      end
    end
  end

end


