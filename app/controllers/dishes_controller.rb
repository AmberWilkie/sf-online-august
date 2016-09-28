require 'pry'

class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(sanitized_params)
    if @dish.save
      render :show
    else
      flash[:error] = @dish.errors.full_messages.first
      render :new
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  private
  def sanitized_params
    params.require(:dish).permit(:dish_name, :dish_desc, :dish_price, :dish_allergy, :dish_ingredients, :dish_cal)
  end

  def error_message
    @dish.errors.full_message each do |message|
      message
    end
  end
end
