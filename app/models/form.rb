class Form < ApplicationRecord

  belongs_to :student

  validates :gender, :classroom, :siblings, :address, :mother_education, :father_education, :parent_status, :mother_age, :father_age, :transportation, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |result|
        csv << result.attributes.values_at(*column_names)
      end
    end
  end

end
