require "./lib/sales_engine"
require "./lib/item_collection"

RSpec.describe ItemCollection do
  it "exists" do
    item = Item.new({
  :id          => 1,
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => 1099,
  :merchant_id => 2
})

  expect(item).to be_instance_of ItemCollection
  end
end