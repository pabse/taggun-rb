require 'test_helper'
require 'generators/taggun/taggun_generator'

class TaggunGeneratorTest < Rails::Generators::TestCase
  tests TaggunGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  test 'generator runs without errors' do
    assert_nothing_raised do
      run_generator ['dummy_key']
    end
  end

  test 'assert all files are properly created' do
    run_generator ['dummy_key']
    assert_file 'config/initializers/taggun.rb'
  end
end
