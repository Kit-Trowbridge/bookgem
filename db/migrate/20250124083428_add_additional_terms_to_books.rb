class AddAdditionalTermsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :additional_terms, :text
  end
end
