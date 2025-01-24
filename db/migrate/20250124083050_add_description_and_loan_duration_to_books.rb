class AddDescriptionAndLoanDurationToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :description, :text
    add_column :books, :loan_duration, :integer
  end
end
