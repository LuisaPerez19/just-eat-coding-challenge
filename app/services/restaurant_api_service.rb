class RestaurantApiService

  BASE_URL = "https://uk.api.just-eat.io/discovery/uk"

  def self.search_restaurants_by_postcode(postcode:nil)

    response = Faraday.get("#{BASE_URL}/restaurants/enriched/bypostcode/#{postcode}")

    if response.status != 200
      Rails.logger.error("Got an error (#{response.status}) from the Just Eat API: #{response.body}")
      return []
    end

    parsed_jason = JSON.parse(response.body)
    response = parsed_jason["restaurants"].first(10)


    # puts JSON.pretty_generate(response)

  end
end
