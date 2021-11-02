class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :description #, :username
  has_one :month
  has_one :user

  # def username
  #   object.user.username
  # end
end
