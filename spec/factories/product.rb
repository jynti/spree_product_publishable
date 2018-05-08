FactoryBot.modify do
  factory :product do
    trait :publishable do
      publishable true
    end

    trait :unpublishable do
      publishable false
    end
  end
end
