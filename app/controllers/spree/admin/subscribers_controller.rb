module Spree
  module Admin
    class SubscribersController < ResourceController
      def download
        filename = Spree::Subscriber.save_subscribers_to_file
        send_file filename, type: 'application/text',
                            filename: 'barbara_subscribers.csv'
      end
    end
  end
end
