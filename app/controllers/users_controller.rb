class UsersController < ApplicationController
  require 'rest-client'
  require 'json'
  require 'pp'
  require 'rubygems'

  def index
    users = RestClient.get 'http://192.168.1.251:3000/api/v1/users', {accept: :json}
    @users = JSON.parse(users)
  end
end
