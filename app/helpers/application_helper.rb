module ApplicationHelper
  def user_show_api(user_id)
    user = RestClient.get("http://192.168.1.242:3333/api/v1/users/#{user_id}")
    @sender = JSON.parse(user)["user"]
  end
end
