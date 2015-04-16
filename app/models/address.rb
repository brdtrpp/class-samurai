class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :facility, dependent: :destroy
end
