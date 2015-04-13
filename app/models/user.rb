class User < ActiveRecord::Base
  include Authority::UserAbilities
  has_many :facility
  has_one :address
  belongs_to :facility
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

