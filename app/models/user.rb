class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, authentication_keys: [:login]

  acts_as_favoritor

  has_many :lists, dependent: :destroy
  has_many :list_markers, dependent: :destroy
  has_one_attached :photo

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  # attr_writer :login

  # def login
  #   @login || self.username || self.email
  # end

  # def self.find_for_database_authentication(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if (login = conditions.delete(:login))
  #     where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  #   elsif conditions.has_key?(:username) || conditions.has_key?(:email)
  #     where(conditions.to_hash).first
  #   end
  # end

end
