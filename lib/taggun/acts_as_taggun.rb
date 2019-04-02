# frozen_string_literal: true

module Taggun
  module ActsAsTaggun
    extend ActiveSupport::Concern

    included do
      def parse_receipt_by_url(receipt_url)
        Taggun::Parser.new.parse(SIMPLE, receipt_url)
      end
    end

    class_methods do
      def acts_as_taggun(options = {})
      end
    end
  end
end
