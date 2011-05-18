require 'Accounts'
require 'Contracts'

class HomeController < ApplicationController
  
  def index
  end
  
  def contacts
	@accounts = Accounts.get_first_hundred
  end
  
  def contracts
	@contracts = Contracts.get_first_hundred
  end
  
  def soql
	@soql = params[:soql] || ""
  end 
  
  def dump
	@accounts = Contracts.get_first_hundred
  end
  
end
