class Subnet < ActiveRecord::Base
  attr_accessible :bcastaddr, :firstaddr, :mask, :network, :system_id
  
  validates :network, :uniqueness => true
  
  belongs_to :system
  
  def calculate_network
    
    ip = IPAddress self.network
    new_subnets = ip.subnet(26)
    
    new_subnets.map do |network|
      @subnet = Subnet.new
      @subnet.network = network.to_string
      @subnet.save
    end
  end

  def newnetwork
      ip = IPAddress self.network
      new_subnets = ip.subnet(26)
#      new_subnets.map do |network|
#      @subnet = Subnet.new
#      @subnet.network = network.to_string
#    end
  end

end
