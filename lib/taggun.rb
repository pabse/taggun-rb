# frozen_string_literal: true

require "taggun/railtie"
require 'taggun/acts_as_taggun'
require 'taggun/configuration'
require 'taggun/parser'
require 'net/http'

module Taggun

  # The base taggun api URL
  BASE_URL    = 'https://api.taggun.io/api'.freeze

  # The Api version to use
  API_VERSION = 'v1'.freeze

  # URL for receipt actions
  RECEIPT_URL = 'receipt'.freeze

  # URL for account actions
  ACCOUNT_URL = 'account'.freeze

  # API endpoint to use file parsing
  FILE = 'file'.freeze

  # API endpoint to use encoded parsing
  ENCODED = 'encoded'.freeze

  # API endpoint to use storage parsing
  STORAGE = 'storage'.freeze

  # API endpoint to use URL parsing
  URL = 'url'.freeze

  # API endpoint to get simple response
  SIMPLE  = 'simple'.freeze

  # API endpoint to get detailed response
  VERBOSE = 'verbose'.freeze

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  require 'taggun/railtie' if defined?(Rails)
end
