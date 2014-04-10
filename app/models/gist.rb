class Gist < ActiveRecord::Base
  validates_presence_of :count, :name, :url
end
