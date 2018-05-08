require 'spec_helper'

describe Spree::Taxon, type: :model do
  let(:taxon) {create(:taxon)}

  describe "#active_products" do
    it "returns published products" do
      expect(taxon.active_products).to be_empty
    end
  end
end


