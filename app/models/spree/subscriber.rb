require 'csv'

class Spree::Subscriber < ActiveRecord::Base
  def self.save_subscribers_to_file
    filename = Rails.root.join('tmp', 'barbara_subscribers.csv')
    File.unlink(filename) if File.exist? filename
    CSV.open(filename, 'wb') do |csv|
      csv << %w(email created_at)
      Spree::Subscriber.all.each do |subscriber|
        csv << [subscriber.email, subscriber.created_at]
      end
    end
    filename
  end
end
