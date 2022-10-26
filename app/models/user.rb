class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # # Associations
  has_many :discussions, dependent: :destroy
  # has_many :prefered_fishing_spots, dependent: :destroy
  # has_many :posts, dependent: :destroy
  # # Validation
  validates :name, presence: true
end
