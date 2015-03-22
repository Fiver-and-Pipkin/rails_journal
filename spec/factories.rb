FactoryGirl.define do
  factory(:comment) do
    commenter_name('example commenter')
    thoughts('example comment')
  end
end
