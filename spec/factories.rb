FactoryGirl.define do  factory :user do
    
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
