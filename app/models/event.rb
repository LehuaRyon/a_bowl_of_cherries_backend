class Event < ApplicationRecord
  belongs_to :month

  scope :order_by_date, -> {order(date: :asc)}
end
