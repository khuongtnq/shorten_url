require 'uri'
class Link < ApplicationRecord
  validates :long_url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
