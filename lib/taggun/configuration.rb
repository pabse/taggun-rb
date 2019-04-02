# frozen_string_literal: true

module Taggun
  class Configuration
    attr_accessor :api_key, :incognito, :refresh

    def initialize
      @api_key = nil
      @incognito = true
      @refresh = false
    end
  end
end
