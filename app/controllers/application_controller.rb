include ActionController::HttpAuthentication::Basic::ControllerMethods
include ActionController::HttpAuthentication::Token::ControllerMethods

class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

end
