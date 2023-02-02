class ShortenUrlService
  class << self
    SHORTEN_URL_PREFIX = ENV['SHORTEN_URL_PREFIX'] || 'http://short.est'

    def decode_shorten_link(short_url)
      token = short_url.split("/").last
      Link.find_by(short_url: token)&.long_url
    end

    def encode_shorten_link(original_url)
      shorten_url = Link.find_by long_url: original_url
      shorten_url ||= Link.create(long_url: original_url, short_url: Devise.friendly_token(6))
      [SHORTEN_URL_PREFIX, '/', shorten_url.short_url].join
    end
  end
end
