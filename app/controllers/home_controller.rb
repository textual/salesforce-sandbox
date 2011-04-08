require 'Accounts'

class HomeController < ApplicationController
  
  def index
  end
  
  def contacts
	@accounts = Accounts.get_first_hundred
  end
  
  def dump
	@accounts = Accounts.get_first_hundred
  end
  
end
