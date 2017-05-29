require 'data_mapper'

class App
  include DataMapper::Resource
  property :id,        Serial
  property :name,      String
  property :client_id, String

  validates_presence_of :name
  validates_presence_of :key

  has n, :sites
end
