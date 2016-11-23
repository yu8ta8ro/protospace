class User < ActiveRecord::Base
  has_many :prototypes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :profile, presence: true
end
