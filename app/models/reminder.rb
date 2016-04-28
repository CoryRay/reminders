class Reminder < ActiveRecord::Base
  validates :name, :frequency, :body, presence: true

  def send_message(phone_number, message)
    @twilio_number = ENV['FROM_PHONE']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => phone_number,
      :body => message,
      # US phone numbers can make use of an image as well.
      # :media_url => image_url
    )
    puts message.to
  end

  private
end
