# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roomidex_relationship do
    user nil
    friend_id 1
    accepted 0
    rejected 0
  end
end
