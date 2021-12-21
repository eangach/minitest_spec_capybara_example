require_relative 'test_helper'

require_relative '../lib/app'
Capybara.app = App

pp Capybara.current_driver

describe App do

  it 'has a home page' do
    visit '/'
    _(page.status_code).must_equal 200
    _(current_path).must_equal '/'
    _(page).must_have_content 'Hello World!'
  end
end
