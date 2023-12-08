class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many  :foods, class_name: "Menu", dependent: :destroy

         validates :first_name, presence: true

         validates :first_name, uniqueness: true
end
