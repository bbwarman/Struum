class Teacher < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	mount_uploader :video, VideoUploader
	
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
  validates :name, presence: true
  validates :email, presence: true
  validates :lesson_price, presence: true

  has_many :lessons, class_name: "Lesson"

end
