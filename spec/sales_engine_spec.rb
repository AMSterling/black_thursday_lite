require "./lib/sales_engine"
require "./lib/item_collection"
require "./lib/merchant_collection"

#You may need to add more `expect` lines to each test to make it more robust...!
RSpec.describe SalesEngine do
  it "exists" do
    sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })
    expect(sales_engine).to be_instance_of SalesEngine
  end

  it "can return an array of all items" do
    sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })

    expect(sales_engine.item_collection).to be_instance_of ItemCollection



  end

  xit "can return an array of all merchants" do
    sales_engine = SalesEngine.from_csv({
      :items => "./data/items.csv",
      :merchants => "./data/merchants.csv"
    })

    expect(sales_engine.merchant_collection).to be_instance_of MerchantCollection
    expect(sales_engine.merchant_collection.all).to be_instance_of Array
    expect(sales_engine.merchant_collection.all.length).to eq(475)

  end

end
