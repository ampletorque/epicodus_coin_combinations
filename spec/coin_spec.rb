require('rspec')
require('coin')
require('pry')

describe('String#coin') do
  it("given a number of cents, computes smallest change") do
    expect(3.coin()).to(eq("3 pennies"))
  end

  it("given a number of cents, computes smallest change") do
    expect(92.coin()).to(eq("3 quarters, 1 dime, 1 nickle, 2 pennies"))
  end
end
