class RemoveAgeFromForm < ActiveRecord::Migration[5.2]
  def change
    remove_column :forms, :age, :integer
  end
end
