# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roomidex_request do
    user nil
    receiver nil
    accepted false
    ignored false
  end
end
