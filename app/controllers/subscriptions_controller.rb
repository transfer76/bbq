class SubscriptionsController < ApplicationController
  before_action :set_event, only: [:create, :destroy]
  before_action :set_subscription, only: [:destroy]

  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      redirect_to @subscription, notice: 'Subscription was successfully created.'
    else
      render :new
    end
  end

 def destroy
   @subscription.destroy
   redirect_to subscriptions_url, notice: 'Subscription was successfully destroyed.'
  end

  private
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    def set_event
      @event = Event.find(params[:event_id])
    end  

    def subscription_params
      params.fetch(:subscription, {}).permit(:user_email, :user_name)
    end
end
