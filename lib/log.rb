require 'data_mapper'

class Log
  include DataMapper::Resource

  property :id, Serial
  property :code, String
  property :message, String

  belongs_to :site
end
