require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# http://localhost:4567/ == "/"

# root path / home page
# show all -> index page
get "/" do
  puts ""
  puts "These are my params:"
  p params # is a hash
  puts ""
  @restaurants = Restaurant.all
  erb :index
  # @view talk to index.erb page
end

# http://localhost:4567/restaurants/10
# {id: '10'}
# http://localhost:4567/restaurants/whatever
# {id: 'whatever'}
# show one -> show page

get "/restaurants/:id" do
  {id: "kingsley"}
  puts ""
  puts "These are my params:"
  p params # is a hash
  puts ""
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post "/restaurants" do
  # params = {"name"=>"Butcher", "city"=>"Meguro"}
  p params
  restaurant = Restaurant.new(params)
  restaurant.save
  redirect '/'
end

# get "/restaurants" do
#   p params

# end




