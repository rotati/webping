require 'sinatra'
require 'bundler'
require 'app'
require 'pinger'
require 'site'
require 'log'

Bundler.require

DataMapper.setup(:default, 'sqlite:data.db')
DataMapper.finalize
#DataMapper.auto_migrate!

get '/' do
  Site.create(name: 'http://rotati.com')
  status 200
end

get '/sites' do
  sites = Site.all
  sites.to_json
end

get '/sites/:id/logs?' do
  site = Site.find(params[:id]).first
  site.logs.to_json
end
