FactoryGirl.define do
  factory :artist do
    artist_name     { Faker::Name.name }
    age             55
    bio             "aaaaaaaaaa aaaaaaaa"

  end
end
