FactoryGirl.define do
  factory :restaurant do
    name 'MyString'
    category 'MyCategory'
    description 'MyText'
    street 'Fjällgatan 3'
    zipcode '41463'
    town 'Gothenburg'
    user {association(:user)}
  end
end
