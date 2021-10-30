class Month < ApplicationRecord
    has_many :events

    # def order_by_date
    #     events.order(date: :asc)
    # end
end
