class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :description, :website, :username #, :user_id
  # has_one :month
  # has_one :user

  def username
    # self.object.user.username
    object.user.username
  end

  # def user_id
  #   object.user.id
  # end
end
