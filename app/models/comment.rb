class Comment < ActiveRecord::Base
  belongs_to :post

  validates :commenter_name, :presence => true
  validates :thoughts, :presence => true
  before_create :send_message
  before_save :upcase_commenter

  private

  define_method(:upcase_commenter) do
    self.commenter_name=(commenter_name().upcase())
  end

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => 'Come along, Pond. You have a new comment waiting!',
                    :To => '5037407984',
                    :From => '5033369801' }
    ).execute
  end
end
