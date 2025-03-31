class RestaurantApiService
  BASE_URL = "https://uk.api.just-eat.io/discovery/uk"

  def self.search_restaurants_by_postcode(postcode:nil)
    postcode = postcode.gsub(' ', '')
    response = Faraday.get("#{BASE_URL}/restaurants/enriched/bypostcode/#{postcode}")

    if response.status != 200
      Rails.logger.error("Got an error (#{response.status}) from the Just Eat API: #{response.body}")
      return {
        error: true,
        message: "Sorry, we couldn't load restaurants at this time. Please try again later."
      }
    end

    parsed_jason = JSON.parse(response.body)
    response = parsed_jason["restaurants"].first(10)

    # puts JSON.pretty_generate(response)
  end
end
