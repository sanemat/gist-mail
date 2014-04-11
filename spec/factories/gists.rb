# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gist do
    name  "Lorem ipsum"
    url   "http://www.example.com/"
    count 1
  end
end
