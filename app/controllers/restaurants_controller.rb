class RestaurantsController < ApplicationController
  def search
    if params[:search].present?
      response = RestaurantApiService.search_restaurants_by_postcode(postcode: params[:search][:postcode])

      if response.is_a?(Hash) && response[:error]
        flash[:alert] = response[:message]
        redirect_to search_restaurants_path and return
      end

      @restaurants = response

      if @restaurants.empty?
        flash[:alert] = "No restaurants available for this postcode at the moment"
        redirect_to search_restaurants_path
      end
    else
      @restaurants = []
    end
  end
end
