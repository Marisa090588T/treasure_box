class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :user_name, uniqueness: true
  has_one :dashboard
  has_many :item_listings, dependent: :destroy
  has_many :stores, dependent: :destroy
  has_many :funds, dependent: :destroy
end
