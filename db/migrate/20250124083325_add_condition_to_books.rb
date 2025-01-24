class AddConditionToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :condition, :string
  end
end
