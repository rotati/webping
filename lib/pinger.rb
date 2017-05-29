require 'net/http'

class Pinger
  def self.ping(site)
    uri = URI(site.name)
    response = Net::HTTP.get_response(uri)

    Log.create(site_id: site.id, code: response.code, message: response.message)
  end
end
