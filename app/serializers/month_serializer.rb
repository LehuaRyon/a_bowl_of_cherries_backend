class MonthSerializer < ActiveModel::Serializer
  attributes :id, :name, :events

  # def new_events
  #   self.object.events.map
  # end

end
