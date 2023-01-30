require './base_request'
require 'net/http'

class MovieRequest < BaseRequest
  def call(id = nil)
    uri = URI("#{api_url}/movie/#{id}")

    super(uri)
  end
end
