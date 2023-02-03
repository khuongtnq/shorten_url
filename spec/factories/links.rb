FactoryBot.define do
  factory :link do
    long_url {Faker::Internet.url}
    short_url {Devise.friendly_token(6)}
  end
end
