FactoryBot.define do

  factory :taxons_with_products, parent: :taxon do
    transient do
      product_count 5
    end

    trait :with_unpublished_type do
      after(:create) do |taxon, evaluator|
        taxon.products << create_list(:product, evaluator.product_count, :unpublishable)
      end
    end

    trait :with_published_and_unpublished_type do
      after(:create) do |taxon, evaluator|
        taxon.products << create_list(:product, evaluator.product_count, :publishable)
        taxon.products << create(:product, :unpublishable)
      end
    end
  end
end
