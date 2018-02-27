namespace :dev do
  task :fetch_city => :environment do
    puts "Fetch city data..."
    response = RestClient.get "http://v.juhe.cn/weather/citys", :params => { :key => "你申请的key放这里" }
    data = JSON.parse(response.body)

    data["result"].each do |u|
      existing_city = City.find_by_juhe_id( u["id"] )
      if existing_city.nil?
        User.create!( :staff_id => u["id"], :coding => u["coding2"],
                      :name => u["city"], :department => u["district"],
                      :role => u[" "], :user_right => u[" "])
      end
    end

    puts "Total: #{User.count} users"
  end
end


