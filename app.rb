require('sinatra')
require('sinatra/reloader')
require('./lib/coin')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('cents').coin()
  erb(:result)
end
