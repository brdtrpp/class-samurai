class Facility < ActiveRecord::Base
  resourcify
  validates :user_id, presence: true
  validates :name, presence: true
  validates :zip_code, length: { minimum: 5, maximum: 5 }
  validates :phone, length: { minimum: 10 }
  has_and_belongs_to_many :users

end
