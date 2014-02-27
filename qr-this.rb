require 'sinatra'
require 'slim'

get('/') { slim :index }
get('/qrthis') do
  @url = params[:url]
  slim :qrthis
end