require 'sinatra'

set(:bind, "0.0.0.0")

get '/' do
  erb :index
end

post '/behandle-login' do
  p params            # skriv ut skjema data
  redirect to("/")    # omdiriger til startsiden
end