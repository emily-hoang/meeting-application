class Task < ApplicationRecord
  belongs_to :meeting
  validates :tasker, :body, presence: true,
  										length: { minimum: 5 }

end
