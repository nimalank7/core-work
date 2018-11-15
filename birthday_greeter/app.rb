require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/birthday' do
    redirect to('/today')
  end
  get '/today' do
    "Happy Birthday Nim!"
  end
  run! if app_file == $0
end
