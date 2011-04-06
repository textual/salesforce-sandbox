class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :logged_in
    
  def logged_in
    @logged_in = ENV['sfdc_token'] != nil
  end
end
