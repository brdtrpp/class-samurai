class User < ActiveRecord::Base
  include Authority::UserAbilities
  has_and_belongs_to_many :facilities, :join_table => "facilities_users", :class_name => "Facility" 
  has_and_belongs_to_many :events, through: :facilities 
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  after_create :assign_default_role

  def assign_default_role
    add_role(:unaffiliated)
  end
end

