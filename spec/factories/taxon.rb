FactoryBot.define do

  factory :taxon, class: 'Spree::Taxon' do
    name 'Taxon1'
    after(:create) do |taxon|
      taxon.products << create(:product, :unpublishable)
    end
  end

  factory :taxonomy, class: 'Spree::Taxonomy' do
    name 'Taxonomy1'
  end

end
