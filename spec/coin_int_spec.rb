require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application

describe('given a number of cents, computes smallest change', {:type => :feature}) do
  it("given a number of cents, computes smallest change") do
    visit('/')
    fill_in('cents' , :with => 92)
    click_button('CHANGE YOSELF')
    expect(page).to have_content('3 quarters, 1 dime, 1 nickel, 2 pennies')
  end
end
