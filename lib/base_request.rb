class BaseRequest
  attr_reader :access_token

  def initialize(access_token)
    @access_token = "Bearer #{access_token}"
  end

  def api_url
    'https://the-one-api.dev/v2'
  end

  def call(uri)
    request = Net::HTTP::Get.new(uri)
    request['Authorization'] = access_token

    puts uri

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') {|http|
      http.request(request)
    }

    response.body
  end
end