# frozen_string_literal: true

module Taggun
  # Basic parser class
  class Parser
    def initialize
      raise(ArgumentError, 'Initializer missing. See README for details') if Taggun.configuration.nil?
      raise(ArgumentError, 'Api Key not set. See README for details.') if Taggun.configuration.api_key.nil?
    end

    # Parse the receipt from url
    #
    # === Arguments
    #
    # * +url+ - The URL to parse from as +String+
    #
    # * +method+ - The method to get. Valid values are +Taggun::Simple+
    #   and +Taggun::Verbose+. Default is +Taggun::Simple+
    #
    # Returns a +JSON+ with the result from Taggun.io
    def from_url(url, method = Taggun::SIMPLE)
      uri = URI.parse("#{BASE_URL}/#{RECEIPT_URL}/#{API_VERSION}/#{method}/#{URL}")

      body = {
        url: url,
        incognito: Taggun.configuration.incognito,
        refresh: Taggun.configuration.refresh
      }

      parse(uri, body)
    end

    def from_file(method, file)
      # TODO
    end

    def from_encoded(method, encoded)
      # TODO
    end

    def from_storage(method, md5)
      # TODO
    end

    def parse(uri, body)
      http         = ::Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = ::Net::HTTP::Post.new(
        uri.request_uri,
        'Content-Type': 'application/json'
      )
      request['apikey'] = Taggun.configuration.api_key

      request.body = body.to_json

      response = http.request(request)

      JSON.parse(response.body)
    end
  end
end
