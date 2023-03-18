class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

    def index
        render json: RestaurantPizza.all
    end

    def create
        restaurant = RestaurantPizza.create!(restaurant_pizza_params)
        if restaurant
            render json: restaurant, status: :created
        else
            render json: { errors: record.erros.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end
    
end
