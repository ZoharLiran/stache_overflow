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
end