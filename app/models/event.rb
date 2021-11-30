class Event < ApplicationRecord
  belongs_to :user
  belongs_to :month
  validates :name, :date, :location, :description, :website, presence: true
end
