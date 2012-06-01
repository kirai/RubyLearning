require 'sinatra'

get '/' do
  'Go to <a href="/hello/perico">Hello X</a>'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end

get '/categories/:name' do
  params[:name]
end


