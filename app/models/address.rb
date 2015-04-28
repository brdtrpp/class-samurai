class Address < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :facility, dependent: :destroy
end
