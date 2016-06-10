class FoodPurchasesController < ApplicationController
  def index
    @food_purchases = FoodPurchase.where(:user_id => current_user.id)
  end

  def show
    @food_purchase = FoodPurchase.find(params[:id])
    # @food_purchase.purchase_date = params[:purchase_date]
    #     @food_purchase.run_out_date = params[:run_out_date]
    #     # @food_purchase_duration = (params[:run_out_date] - params[:purchase_date]).to_i
  end

  def new
    @food_purchase = FoodPurchase.new
  end

  def create
    @food_purchase = FoodPurchase.new
    @food_purchase.purchase_date = params[:purchase_date]
    @food_purchase.brand = params[:brand]
    @food_purchase.volume = params[:volume]
    # @food_purchase.run_out_date = params[:run_out_date]
    @food_purchase.user_id = params[:user_id]
    @food_purchase.dog_id = params[:dog_id]

    @days = @food_purchase.volume/@food_purchase.dog.consumption_per_day
    @food_purchase.run_out_date = Date.today+@days.days

    # @food_purchase_duration = (params[:run_out_date] - params[:purchase_date]).to_i

    if @food_purchase.save
      redirect_to "/food_purchases", :notice => "Food purchase created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_purchase = FoodPurchase.find(params[:id])
  end

  def update
    @food_purchase = FoodPurchase.find(params[:id])

    @food_purchase.purchase_date = params[:purchase_date]
    @food_purchase.brand = params[:brand]
    @food_purchase.volume = params[:volume]
    @food_purchase.run_out_date = params[:run_out_date]
    @food_purchase.user_id = params[:user_id]
    @food_purchase.dog_id = params[:dog_id]

    if @food_purchase.save
      redirect_to "/food_purchases", :notice => "Food purchase updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_purchase = FoodPurchase.find(params[:id])

    @food_purchase.destroy

    redirect_to "/food_purchases", :notice => "Food purchase deleted."
  end
end
