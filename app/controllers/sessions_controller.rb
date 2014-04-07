class SessionsController < ApplicationController
  def create
    # render text: request.env['rack.auth'].inspect
    auth = request.env['omniauth.auth'].extra.access_token.params
    auth['provider'] = request.env['omniauth.auth']['provider']
    
    unless @auth = Authorization.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    #Log the authorizing user in.
    self.current_user = @auth.user

    redirect_to root_path
    # render text: "Welcome, #{current_user.name}."
  end

  def logout
    session.clear
    redirect_to root_path
  end

  def login
    user = User.find_by_email(params[:email])
    pass = false
    if user
      pass = user.password == params[:password] ? true : false
    else
      pass = false
    end
    if pass
      session[:user_id] = user.id
      redirect_to user_path id: user.id
    else
      redirect_to new_user_path
    end
  end
end