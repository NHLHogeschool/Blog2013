class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      render text: 'U BENT INGELOGD!'
    else
      render text: 'FOUTIEVE GEGEVENS INGEVOERD!'
    end
  end
end
