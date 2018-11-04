class RemoveInternetUsageFromForm < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :internet_usage, :string
  end
end
