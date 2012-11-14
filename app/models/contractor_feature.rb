class ContractorFeature < ActiveRecord::Base
  attr_accessible :contractor_id, :feature_id

  ##associations
  belongs_to :contractor
  belongs_to :feature

end

