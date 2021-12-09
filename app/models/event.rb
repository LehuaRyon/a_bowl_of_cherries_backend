class Event < ApplicationRecord
  belongs_to :user
  belongs_to :month
  validates :name, :date, :location, :description, :website, presence: true
  validates :name, :description, uniqueness: true
end
