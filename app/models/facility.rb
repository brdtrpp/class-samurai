class Facility < ActiveRecord::Base
  resourcify
  validates :user_id, presence: true
  has_and_belongs_to_many :users
  belongs_to :facilities
end
