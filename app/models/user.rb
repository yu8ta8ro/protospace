class User < ActiveRecord::Base
  has_many :prototypes
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :profile, presence: true
end
