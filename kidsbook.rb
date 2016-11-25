require 'sinatra'

enable(:sessions)
set(:session_secret, '--__KIDSAKODER__--')
post '/behandle-login' do
  session[:avsender] = params[:avsender]
  redirect to("/")   
end

set(:bind, "0.0.0.0")

get '/' do
  erb :index
end

post '/behandle-login' do
  p params            # skriv ut skjema data
  redirect to("/")    # omdiriger til startsiden
end