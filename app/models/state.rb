# State model
# name:string
class State < ActiveRecord::Base
  validates :name, presence: true
  has_many :cities
  has_many :neighborhoods
end
