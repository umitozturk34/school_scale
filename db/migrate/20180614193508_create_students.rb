class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :number
      t.string :email
      t.string :code

      t.timestamps
    end
  end
end
