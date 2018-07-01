class AddSchoolNameToForms < ActiveRecord::Migration[5.2]
  def change
    add_column :forms, :school_name, :string
  end
end
