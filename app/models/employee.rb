class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  
  ROLES = %w[admin mostrador mesera]
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
