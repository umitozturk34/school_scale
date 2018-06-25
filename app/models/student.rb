class Student < ApplicationRecord
  has_one :form
  has_one :school
end
