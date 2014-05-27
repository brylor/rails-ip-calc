class System < ActiveRecord::Base
  
  belongs_to :subnet

  attr_accessible :name, :subnet_id
end
