class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :description
  has_one :month
end
