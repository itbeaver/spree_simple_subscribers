FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications,
  # and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_simple_subscribers/factories'

  factory :subscriber, class: Spree::Subscriber do
    email { Faker::Internet.email }
  end
end
