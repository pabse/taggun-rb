class Receipt < ApplicationRecord
  def get_total_sum
    Taggun::Parser.new.parse(Taggun::SIMPLE, '')
  end
end
