class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :description, :website, :username

  def username
    object.user.username
  end

end
