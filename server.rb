require 'sinatra'

set :bind, '0.0.0.0' # This is needed for vagrant

get '/welcome/:name' do 
  @name = params[:name]
  erb :welcome
end

get '/say/*/to/*' do 
  puts params
  erb :say
end

get '/test' do 
  puts params
  @name = params[:name]
  @mail = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :test
end

post '/test' do 
  puts params
  @name = params[:name]
  @mail = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :test
end

get '/dog-registration' do
  puts params
  @name = params[:name]
  @mail = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :dog_reg
end

get '/dog-registration-results' do
  puts params
  @name = params[:name]
  @mail = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :dog_reg_res
end
