module BigcommerceAPI

  module Countable
    
    def count(params = {})
    	puts "#{resource}"
      response = BigcommerceAPI::Resource.http_request(:get, "/#{resource}/count", :query => date_adjust(params))
      (response.success? and !response.nil?) ? response['count'] : nil
    end

  end

end

