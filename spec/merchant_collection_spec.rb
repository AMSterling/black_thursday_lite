require './lib/merchant_collection'

RSpec.describe do

  before do
    @merchant_collection = MerchantCollection.new('./data/merchants.csv')
  end

  it "exists" do

    expect(@merchant_collection).to be_instance_of MerchantCollection
  end

  it "can return an array of all Merchant instances" do

    expect(@merchant_collection.all).to be_instance_of Array
    expect(@merchant_collection.all.length).to eq(475)
    expect(@merchant_collection.all.first).to be_instance_of Merchant
    expect(@merchant_collection.all.first.id).to eq('12334105')
  end

  it "can find a merchant by ID" do

    expect(@merchant_collection.find('12334105')).to be_instance_of Merchant
    expect(@merchant_collection.find('12334105').name).to eq('Shopin1901')
  end
end
