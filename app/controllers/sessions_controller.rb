class SessionsController < ApplicationController
  def new

    @session = Session.new
  end

  def create
    @user = User.find_by(params[:username])
    @session = Session.new(session_params)
    @session.user = @user
    @session.save
  end
end
