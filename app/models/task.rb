class Task < ApplicationRecord
  belongs_to :meeting
  validates :assignee, :body, presence: true,
  										length: { minimum: 5 }

end
