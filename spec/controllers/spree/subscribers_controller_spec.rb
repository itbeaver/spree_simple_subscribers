RSpec.describe Spree::SubscribersController, type: :controller do
  let(:valid_params) do
    {
      format: :js,
      subscriber: {
        email: 'test@test.com'
      }
    }
  end

  context '#create' do
    it 'returns success with valid params' do
      expect do
        spree_post :create, valid_params
      end.to change(Spree::Subscriber, :count).by(1)
    end

    it 'raises error with invalid params' do
      expect do
        spree_post :create, format: :js
      end.to raise_error ActionController::ParameterMissing
    end
  end
end
