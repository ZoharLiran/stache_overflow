module UsersHelper
  def logged_username
    @username = User.find_by_id(session[:user_id]).name if signed_in?
  end

  def logged_user
    User.find_by_id(session[:user_id]) if signed_in?
  end

  def phone_communication(user)
    if user && user.phone
      twilio_client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
      twilio_client.account.messages.create({
        :from => user.phone,  
        :body => 'You have a new answer to your question', 
        :media_url => 'Stache Overflow', 
      })
    end 
  end 
end
