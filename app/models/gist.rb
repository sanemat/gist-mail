class Gist < ActiveRecord::Base
  attr_accessible :count, :name, :url
  validates_presence_of :count, :name, :url
end
