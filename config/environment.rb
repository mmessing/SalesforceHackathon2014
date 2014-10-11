# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

[:get, :put, :post, :delete].each do |method|
  define_method(method) do |url, options = {}|
    uri = URI(url)

    Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |connection|
      options[:headers] = (options[:headers] || {}).merge({'Content-Type' => 'application/json'}) if options[:body]
      uri.query = options[:params].to_query if options[:params]
      request = "Net::HTTP::#{method.capitalize}".constantize.new(uri.to_s, options[:headers])
      request.body = MultiJson.dump(options[:body]) if options[:body]

      response = connection.request request
      status = response.code.to_i

      if (200..201) === status
        response.body
      else
        options[:on_error].call(status, response.body) if options[:on_error]
      end
    end
  end
end

