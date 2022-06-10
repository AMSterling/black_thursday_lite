class Merchant
  attr_reader :id, :name

  def initialize(data)
    @did = data[:id]
    @name = data[:name]
  end
end 
