class Month < ApplicationRecord
    has_many :events
    has_many :users, through: :events
    # def order_by_date
    #     events.order(date: :asc)
    # end
end
