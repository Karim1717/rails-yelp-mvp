class RestaurantsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

   def create
    @restaurant = Restaurant.new(restaurant_params)

    # Will raise ActiveModel::ForbiddenAttributesError
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    # Will raise ActiveModel::ForbiddenAttributesError
      if @restaurant.update(restaurant_params)
        redirect_to restaurants_path
      else
        render 'edit'
      end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :stars)
  end

end
