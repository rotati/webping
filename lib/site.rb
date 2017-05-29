require 'data_mapper'

class Site
  include DataMapper::Resource

  property :id,          Serial
  property :name,        String
  property :description, String
  property :created_at,  DateTime
  property :updated_at,  DateTime
  property :app_id,      String

  validates_presence_of :name

  has n, :logs

  before :save, :generate_app_id

  def self.ping
    all.each do |site|
      Pinger.ping(site)
    end
  end

  private
  def generate_app_id
    self.app_id = ('a'..'z').to_a.shuffle[0,20].join
  end
end
