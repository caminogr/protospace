class User < ActiveRecord::Base
  has_many :prototypes
  has_many :likes
  mount_uploader :avatar, AvatarUploader
  validates :username, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
