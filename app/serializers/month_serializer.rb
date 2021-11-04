class MonthSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :events

  # Month.all[10].events.order(date: :asc)
  # def order_by_date
    #     events.order(date: :asc)
    # end

  def events
    self.object.events.order(date: :asc)
  end

end
