GrapeSwaggerRails.options.url = '/api/v1/swagger_doc'
GrapeSwaggerRails.options.app_url =
  case Rails.env
  when 'development'
    URI::HTTP.build(Rails.application.routes.default_url_options).to_s
  else
    URI::HTTPS.build(Rails.application.routes.default_url_options).to_s
  end
URI::HTTP.build(Rails.application.routes.default_url_options).to_s
GrapeSwaggerRails.options.app_name = 'SHORTEN URL'
