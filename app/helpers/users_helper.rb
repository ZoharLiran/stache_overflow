module UsersHelper
  def loggedusername
    @username = User.find_by_id(session[:user_id]).name if signed_in?
  end
end
