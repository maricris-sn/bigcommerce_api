module BigcommerceAPI

  class CustomField < Resource

    attr_accessor :id, :product_id, :name, :text

    belongs_to :product

		def resource_url
			"products/#{self.product_id}/custom_fields"
		end

  end

end

