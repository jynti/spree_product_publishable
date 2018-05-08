require 'spec_helper'

describe Spree::Product, type: :model do
  let(:published_product) { create(:product, :publishable) }
  let(:unpublished_product) { create(:product, :unpublishable) }

  describe ".published" do

    it "returns the published product" do
      expect(Spree::Product.published).to include(published_product)
      puts Spree::Product.all.inspect
    end

    it "does not return unpublished_product" do
      expect(Spree::Product.published).to_not include(unpublished_product)
    end

  end
end
