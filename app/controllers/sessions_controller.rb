class SessionsController < ApplicationController
  def create
    # render text: request.env['rack.auth'].inspect
    auth = request.env['rack.auth']
    unless @auth = Authorization.find_from_hash(auth)
  end
end