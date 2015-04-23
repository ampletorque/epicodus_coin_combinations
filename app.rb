require('sinatra')
require('sinatra/reloader')
require('./lib/coin')
also_reload('lib/*')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('coin').coin()
  erb(:result)
end
