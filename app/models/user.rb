class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :scraps
  validates_uniqueness_of :user_name
  validates_presence_of :first_name, :user_name, :last_name
end
