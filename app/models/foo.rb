class Foo < ActiveRecord::Base
  attr_accessible :bar_id

  has_many :bars
end
