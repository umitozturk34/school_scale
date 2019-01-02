class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@bahcesehir\.k12.tr\z/, message: "sadece bahcesehir.k12.tr uzantılı bir mail adresi ile kayıt olunabilir." }

  has_many :students
end
