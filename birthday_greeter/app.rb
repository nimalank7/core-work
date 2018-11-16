require 'sinatra/base'
require 'date'
require_relative "./lib/days_to_birthday.rb"

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end
  post '/birthday' do
    p params
    session[:name] = params[:name]
    session[:birthday] = params[:birthday]
    p Date.parse(Time.now.to_s).to_s
    if session[:birthday] == Date.parse(Time.now.to_s).to_s
      redirect to('/today')
    else
      redirect to('/not_today')
    end
  end
  get '/today' do
    @name = session[:name]
    @birthday = session[:birthday]
    erb(:birthday)
  end
  get '/not_today' do
    @name = session[:name]
    @days = calculation(session[:birthday])
    erb(:not_today)
  end
  run! if app_file == $0
end
