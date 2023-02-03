require 'rails_helper'

RSpec.describe "/api/v1/shorten_urls/", type: :request do

  let(:encode_attributes) do
    {
      original_url: Faker::Internet.url
    }
  end

  let(:decode_attributes) do
    {
      short_url: Faker::Internet.url
    }
  end

  let (:encode_invalid_url) do
    {
      original_url: "abcxyz.com"
    }
  end

  let (:decode_invalid_url) do
    {
      original_url: "abcxyz.com"
    }
  end

  describe 'POST /encode' do
    context 'with valid attributes' do
      it 'generate encode url' do
        post '/api/v1/shorten_urls/encode', params: encode_attributes
        expect(response).to have_http_status(:success)
        expect(response.body).not_to be_empty
      end
    end

    context 'with valid parameters and create link' do
      it 'creates a new link' do
        expect do
          post '/api/v1/shorten_urls/encode', params: encode_attributes
        end.to change(Link, :count).by(1)
      end
    end

    context 'with valid attributes' do
      it 'generate encode url' do
        post '/api/v1/shorten_urls/encode', params: encode_invalid_url
        expect(response).to have_http_status(400)
      end
    end
  end

  describe 'POST /decode' do
    context 'with valid attributes' do
      it 'generate encode url' do
        post '/api/v1/shorten_urls/decode', params: decode_attributes
        expect(response).to have_http_status(:success)
        expect(response.body).not_to be_empty
      end
    end

    context 'with invalid attributes' do
      it 'generate encode url' do
        post '/api/v1/shorten_urls/decode', params: decode_invalid_url
        expect(response).to have_http_status(400)
      end
    end
  end
end
