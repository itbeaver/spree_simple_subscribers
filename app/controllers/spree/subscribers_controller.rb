module Spree
  class SubscribersController < ApplicationController
    respond_to :js

    def create
      subscriber = Spree::Subscriber.new(relation_params)
      if subscriber.save
        respond_with(subscriber, status: 201)
      else
        invalid_resource!(subscriber)
      end
    end

    private

    def relation_params
      params.require(:subscriber).permit(:email)
    end
  end
end
