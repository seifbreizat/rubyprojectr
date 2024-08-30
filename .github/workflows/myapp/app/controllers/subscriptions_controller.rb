class SubscriptionsController < ApplicationController
    def new
      @stripe_publishable_key = ENV['STRIPE_PUBLISHABLE_KEY']
    end
  
    def create
      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
      )
  
      subscription = Stripe::Subscription.create(
        customer: customer.id,
        items: [{ plan: 'your_stripe_plan_id' }]
      )
  
      @subscription = Subscription.create(
        user_id: current_user.id,
        stripe_subscription_id: subscription.id
      )
  
      redirect_to root_path, notice: 'Subscription created successfully!'
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_subscription_path
    end
  end
  