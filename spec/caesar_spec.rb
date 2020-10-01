#spec/caesar_spec.rb
require "./lib/caesar"

describe "caesar" do
  xit "returns string as numbers" do
    expect(caesar("Hello!", 1)).to eql("96131316!")
  end
  it "returns string as converted letters" do
    expect(caesar("Hello!", 1)).to eql("Ifmmp!")
  end
  it "works with negative numbers" do
    expect(caesar("Hello!", -1)).to eql("Gdkkn!")
  end
  it "works with very large numbers" do
    expect(caesar("Hello!", 261)).to eql("Ifmmp!")
  end
  it "works with very large negative numbers" do
    expect(caesar("Hello!", -261)).to eql("Gdkkn!")
  end
  it "works with a lot of special characters/numbers" do
    expect(caesar("Hello! :) >:( ;-;", 25)).to eql("Gdkkn! :) >:( ;-;")
  end
end
