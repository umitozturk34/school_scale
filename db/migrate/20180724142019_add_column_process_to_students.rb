class AddColumnProcessToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :process, :integer
  end
end
