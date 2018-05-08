require 'spec_helper'

describe Spree::Taxon, type: :model do
  let(:taxon_with_unpublished_products) { create(:taxons_with_products, :with_unpublished_type) }
  let(:taxon_with_products) { create(:taxons_with_products, :with_published_and_unpublished_type) }

  describe "#active_products" do
    context "when taxon has only unpublished products" do
      it "returns empty list" do
        expect(taxon_with_unpublished_products.active_products).to be_empty
      end
    end

    context "when taxon has published products also" do
      it "returns only publishable products" do
        expect(taxon_with_products.active_products).to all( have_attributes(publishable: true) )
      end
    end
  end
end


