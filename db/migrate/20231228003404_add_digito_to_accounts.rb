class AddDigitoToAccounts < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :digit, :integer
  end
end
