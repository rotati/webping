require 'sinatra'
require 'bundler'
require 'app'
require 'pinger'
require 'site'
require 'log'
require 'pry'

Bundler.require

DataMapper.setup(:default, 'sqlite:///data.db')

binding.pry
