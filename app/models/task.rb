class Task < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name, :status, :project
  validates :status, inclusion: { in: %w(todo doing done), message: "status is not valid" }

end