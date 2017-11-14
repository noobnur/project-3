class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :skills
  has_many :languages, through: :skills

  has_many :lessons, :foreign_key => 'student_id'
  has_many :bookings, through: :lessons

  has_many :testimonials, :class_name => 'testimonials', :foreign_key => 'tutor_id'
  has_many :testimonials, :class_name => 'testimonials', :foreign_key => 'author_id'
  has_uploadcare_file :photo
end
