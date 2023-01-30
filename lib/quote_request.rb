require 'base_request'
require 'net/http'

class QuoteRequest < BaseRequest
  def call(id = nil)
    uri = URI("#{api_url}/movie/#{id}/quote")

    super(uri)
  end
end
