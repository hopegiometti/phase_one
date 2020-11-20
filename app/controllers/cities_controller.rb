class CitiesController < ApplicationController
    
    def index
        @cities = City.all
        render json: @cities
    end

    def create
        @city = City.create(city_params)
        render json: @city
    end

    def destroy
        @city = City.find(params[:id])
        @city.destroy
        render json: { status: 'SUCCESS', message: 'deleted the city', data: @city }
    end

    def search
        @@city = City.find(params[:name])
        response = HTTParty.get("https://developers.zomato.com/api/v2.1/cities?q=#{@@city}&count=1")
        render json: response.body
    end

    private

    def city_params
        params.permit(:city_id, :name, :country_id, :country_name, :country_flag_url, :should_experiment, :has_go_out_tab, :discovery_enabled, :has_new_ad_format, :is_state, :state_id, :state_name, :state_code)
    end

end
