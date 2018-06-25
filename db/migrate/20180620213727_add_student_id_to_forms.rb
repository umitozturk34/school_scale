class AddStudentIdToForms < ActiveRecord::Migration[5.2]
  def change
    add_column :forms, :student_id, :integer
  end
end
