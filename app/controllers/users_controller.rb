class UsersController < ApplicationController
  require 'rest-client'
  require 'json'
  require 'pp'
  require 'rubygems'

  def index
    # 以下 API 调用只是 get，后面 params部分是 head 信息
    users = RestClient.get 'http://192.168.1.242:3333/api/v1/users'
    # 解析为 JSON 格式
    @users = JSON.parse(users)["user"]
  end

  def show
    # gem 'rest-client' 没有提供更改 API 路径最后 id 的方法，通过变量赋值与插值解决
    user_id = params[:id].to_i
    user = RestClient.get("http://192.168.1.242:3333/api/v1/users/#{user_id}")
    @user = JSON.parse(user)["user"]
  end
end
