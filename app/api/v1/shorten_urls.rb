require 'uri'
class V1::ShortenUrls < Grape::API
  helpers V1::Helpers

  resource :shorten_urls do
    desc 'Decodes a shortened URL to its original URL'
    params do
      requires :short_url, type: String, desc: 'shorten url'
    end
    get 'decode' do
      short_url = declared_params[:short_url]
      error!({ error: 'URL not valid', code: 400 }, 400) if (short_url =~ URI::regexp).nil?
      url = ShortenUrlService.decode_shorten_link short_url
      present :url, url || ''
    end

    desc 'Encodes a URL to a shortened URL'
    params do
      requires :original_url, type: String, desc: 'Original url'
    end
    post 'encode' do
      original_url = declared_params[:original_url]
      error!({ error: 'URL not valid', code: 400 }, 400) if (original_url =~ URI::regexp).nil?
      url = ShortenUrlService.encode_shorten_link original_url
      present :url, url || ''
    end
  end
end
