class Facility < ActiveRecord::Base
  resourcify
  has_many :user
  has_one :address
  has_many :event
  belongs_to :user
  accepts_nested_attributes_for :address
end
