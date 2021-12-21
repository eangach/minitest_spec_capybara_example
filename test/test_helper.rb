ENV['RACK_ENV'] = 'TEST'

require 'minitest/autorun'
require 'minitest/pride'

require 'capybara/dsl'
require 'capybara/minitest'
require 'capybara/minitest/spec'

class Minitest::Spec
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end
