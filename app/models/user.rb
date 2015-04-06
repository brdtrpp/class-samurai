class User < ActiveRecord::Base
  include Authority::UserAbilities
  has_many :events, foreign_key: :admin_id
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  after_create :assign_default_role

  def assign_default_role
    add_role(:admin)
  end
end

