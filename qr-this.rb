require 'sinatra'
require 'slim'

get('/') { slim :index }
get('/qrthis') do


  @host = request.host
  port = request.port
  @host = "#{@host}:#{port}" unless port == 80

  @url = params[:url]
  slim :qrthis
end