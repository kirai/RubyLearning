require 'sinatra'

get '/' do
  'Hello world!'
  '<a href="/bu">Go to bu</a>'
end

get '/bu' do
  'badaboom'
end

