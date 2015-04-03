FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "test#{n}@example.com" }
    password('12345678')
    phone_number('5038675309')
  end


  factory(:post) do
    title('example title')
    entry('example entry')
  end

  factory(:comment) do
    commenter_name('example commenter')
    thoughts('example comment')
  end
end
