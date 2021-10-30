class MonthSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events

  # def events
  #   self.object.events.map do |e|
  #     {
  #       id: e.id,
  #       name: e.name,
  #       date: e.date,
  #       location: e.location,
  #       description: e.description
  #     }
  #   end
  # end

end
