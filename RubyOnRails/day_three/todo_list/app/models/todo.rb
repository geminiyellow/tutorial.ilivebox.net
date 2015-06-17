class Todo < ActiveRecord::Base
  validates_presence_of :task
  validates_length_of :task, maximum: 1
end
