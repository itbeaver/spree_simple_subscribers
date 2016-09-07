require 'csv'

RSpec.describe Spree::Subscriber, type: :model do
  let!(:subscribers) { create_list :subscriber, 2 }

  describe '#save_subscribers_to_file' do
    it 'should create file witn csv' do
      filename = Spree::Subscriber.save_subscribers_to_file
      arr = CSV.read(filename)
      expect(arr.last).to include subscribers.last.email
    end
  end
end
