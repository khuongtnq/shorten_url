Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  mount GrapeSwaggerRails::Engine => '/swagger' unless Rails.env.production?
  mount Root, at: '/'
end
