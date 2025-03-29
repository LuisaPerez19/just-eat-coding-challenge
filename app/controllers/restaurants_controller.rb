class RestaurantsController < ApplicationController
  def search
    if params[:search].present?
      @restaurants = RestaurantApiService.search_restaurants_by_postcode(postcode: params[:search][:postcode])
      if @restaurants.empty?
        flash[:alert] = "There are no restaurants under this postcode, we hope to be near you soon!"
        redirect_to search_restaurants_path
      end
    else
      @restaurants = []
    end
  end
end
