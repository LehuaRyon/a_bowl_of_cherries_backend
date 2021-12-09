class MonthSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events

  def events
    self.object.events.order(date: :asc)
  end

end
