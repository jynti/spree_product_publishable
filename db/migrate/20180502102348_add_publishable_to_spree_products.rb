class AddPublishableToSpreeProducts < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_products, :publishable, :boolean, default: true
    add_index :spree_products, :publishable
  end
end
