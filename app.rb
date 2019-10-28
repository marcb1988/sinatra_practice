require "sinatra"
set :session_secret, "super secret"

get "/" do
  "Hello World!"
end

get "/secret" do
  "This is a secret! Get outta here!"
end

get "/who_am_i" do
  "I AM IRON MAN"
end

get "/ruby" do
  "I frickin' hate ruby, can we move on yet please?"
end

get "/dog" do
  erb(:index)
end
