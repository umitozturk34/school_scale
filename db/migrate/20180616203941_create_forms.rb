class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :age
      t.string :gender
      t.string :class
      t.string :siblings
      t.string :address
      t.integer :internet_usage
      t.string :mother_education
      t.string :father_education
      t.string :parent_status
      t.integer :mother_age
      t.integer :father_age
      t.string :transportation

      t.timestamps
    end
  end
end
