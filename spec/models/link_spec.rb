require 'rails_helper'

RSpec.describe Link, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect do
      create(:link)
    end.to change(Link, :count).by(1)
  end

  it "is not valid wrong long_url format" do
    link = Link.new(long_url: "abcxyz.com")
    expect(link).to_not be_valid
  end
end
