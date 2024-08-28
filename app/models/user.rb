class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_favoritor

  has_many :lists, dependent: :destroy
  has_many :list_markers, dependent: :destroy
  has_one_attached :photo

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
