class Meeting < ApplicationRecord
	has_many :tasks, dependent: :destroy
	validates :title, :description, presence: true
end
