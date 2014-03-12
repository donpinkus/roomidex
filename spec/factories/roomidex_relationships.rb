# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roomidex_relationship do
    user nil
    friend_id 1
    index "MyString"
    show "MyString"
    create "MyString"
    destroy "MyString"
  end
end
