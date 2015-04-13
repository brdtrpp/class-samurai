class Facility < ActiveRecord::Base
  resourcify
  has_many :user
  has_one :address
  has_many :event
  belongs_to :user
end
