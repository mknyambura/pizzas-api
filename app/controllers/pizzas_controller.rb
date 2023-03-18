class PizzasController < ApplicationController
    def index
        @pizzas = Pizza.all
        render json: @pizzas, only: [:id, :name, :ingredients]
    end

    def show
        @pizzas = Restaurant.find_by(id: params[:id])
        if @pizzas
          render json: @pizzas, status: :ok
        else
          render json: { error: "Restaurant not found" }, status: :not_found
        end
    end
    
end
