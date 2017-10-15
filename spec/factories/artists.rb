FactoryGirl.define do
  factory :artist do
    artist_name     { Faker::Name.first_name }
    age             55
    bio             "aaaaaaaaaa aaaaaaaa"
    
  end
end
