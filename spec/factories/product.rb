FactoryBot.define do
  trait :publishable do
    publishable true
  end

  trait :unpublishable do
    publishable false
  end

  factory :product, class: 'Spree::Product' do
    name "Product1"
    price 122
    shipping_category
    available_on Date.current
    publishable true
  end

  factory :shipping_category, class: 'Spree::ShippingCategory' do
    name "ShippingCategory1"
  end
end
