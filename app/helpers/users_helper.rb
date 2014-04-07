module UsersHelper
  require 'Plivo'
  include Plivo

  def logged_username
    @username = ActiveRecord::Base::User.find_by_id(session[:user_id]).name if signed_in?
  end

  def logged_user
    ActiveRecord::Base::User.find_by_id(session[:user_id]) if signed_in?
  end

  def phone_communication(user)
    # if user && user.phone
      p = RestAPI.new(ENV['PLIVO_AUTH_ID'], ENV['PLIVO_AUTH_TOKEN'])
      # Send SMS
      params = {'src' => '16202630983', 
                 'dst' => user.phone, 
                 'text' => 'Hi, your question on StacheOverflow is answered',
                 'type' => 'sms',
              }
      response = p.send_message(params)
    # end 
  end 
  
end
