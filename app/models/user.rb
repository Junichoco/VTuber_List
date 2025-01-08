class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable,
  #        :trackable, authentication_keys: [:login]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # acts_as_favoritor


  # validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  has_many :lists, dependent: :destroy
  has_many :list_markers, dependent: :destroy
  has_one_attached :photo

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  validate :validate_username

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def lists
    List.where(user_id: id).order("position ASC")
  end

  def next_num
    List.where(user_id: id).length + 1
  end

  def self.find_by_name(name)
    User.where(username: name).first
  end

  def move_list(old_num, new_num)
    if old_num != new_num && old_num > 0 && old_num <= lists.length && new_num > 0 && new_num <= lists.length

      lists[old_num - 1].update(position: new_num)
      # target_list = lists[old_num - 1]

      # if new_num < old_num
      #   lists[new_num - 1..old_num - 2].each do |list|
      #     list.update(order_num: list.order_num + 1)
      #   end
      # elsif new_num > old_num
      #   lists[old_num..new_num - 1].each do |list|
      #     list.update(order_num: list.order_num - 1)
      #   end
      # end
      # target_list.update(order_num: new_num)
    end
  end

  def order
    lists.each do |list|
      puts "#{list.name}: #{list.order_num}"
    end
  end

end
