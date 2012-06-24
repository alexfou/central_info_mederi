class ApplicationController < ActionController::Base
  protect_from_forgery unless Rails.env.test?

end
