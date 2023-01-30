require './movie_request'
require './quote_request'
require 'json'

class LOTR
  class << self
    def movies(access_token, id = nil)
      JSON.parse(MovieRequest.new(access_token).call(id))['docs']
    end

    def quote(access_token, id)
      JSON.parse(QuoteRequest.new(access_token).call(id))['docs']
    end
  end
end
