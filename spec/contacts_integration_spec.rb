require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contacts path', {:type => :feature}) do
  it('it lets user add a new contact to a list of contacts') do
  visit('/')
  fill_in('first_name', :with => 'John')
  fill_in('last_name', :with => 'Smith')
  fill_in('job_title', :with => 'Pet Detective')
  fill_in('company', :with => 'Eye Spy')
  click_link('Add this contact')
  expect(page).to have_content('John', 'Smith', 'Pet Detective', 'Eye Spy')
  end
end

describe('email path', {:type => :feature}) do
  it('lets the user add an email to an existing contact') do
    fill_in('new_email', :with => 'johnsmith@hotmail.com')
    click_button('Add email')
    expect(page).to have_content('johnsmith@hotmail.com')
  end
end
