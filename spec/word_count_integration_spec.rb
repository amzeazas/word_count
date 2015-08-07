require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('processes the user entry and returns the number of times a string appears in a multiple word string') do
    visit('/')
    fill_in('word', :with => 'name')
    fill_in('compare', :with => 'my name is name')
    click_button('Send')
    expect(page).to have_content('"name" shows up in "my name is name" 2 times')
  end
end
