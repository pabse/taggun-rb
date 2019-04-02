# frozen_string_literal: true

class TaggunGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  argument :api_key, required: false

  desc 'Configures Taggun with your api_key'
  def generate_layout
    template 'initializer.rb.erb', 'config/initializers/taggun.rb'
  end
end
