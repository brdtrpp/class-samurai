class Event < ActiveRecord::Base
  resourcify
  belongs_to :admin, class_name: 'User'
end
