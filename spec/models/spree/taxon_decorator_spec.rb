require 'spec_helper'

describe Spree::Taxon, type: :model do
  let(:taxon) {create(:taxon)}

  describe "#active_products" do
    context "when taxon has only unpublished products" do
      it "returns empty list" do
        expect(taxon.active_products).to be_empty
      end
    end
  end
end


