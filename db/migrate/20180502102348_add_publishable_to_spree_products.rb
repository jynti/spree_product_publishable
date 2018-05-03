class AddPublishableToSpreeProducts < SpreeExtension::Migration[4.2]
  def change
    unless column_exists? :spree_products, :publishable
      add_column :spree_products, :publishable, :boolean, default: true
      add_index :spree_products, :publishable
    end
  end
end
