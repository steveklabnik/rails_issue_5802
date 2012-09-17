class Bar < ActiveRecord::Base
  attr_accessible :foo_id, :name
  belongs_to :foo
  validates :name, :length => { :minimum => 2 }

  after_commit :do_something, :on => :create

  def do_something
    puts "something"
  end
end
