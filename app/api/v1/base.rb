class V1::Base < Grape::API
  helpers V1::Helpers
  include V1::ExceptionsHandler

  prefix 'api'
  format :json
  version 'v1'

  mount V1::ShortenUrls

  add_swagger_documentation(api_version: self.version, hide_format: true, hide_documentation_path: true)
end
