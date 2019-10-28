require "sinatra"
set :session_secret, "super secret"

get "/" do
  "Hello World!"
end

get "/secret" do
  "This is a secret! Get outta here!"
end

get "/name" do
  erb(:form)
end

post "/named-dog" do
  p params
  @name = params[:name]
  erb(:index)
end

get "/random-dog" do
  @name = ["Bella", "Bell-dog", "Bella-blott"].sample
  erb(:index)
end
