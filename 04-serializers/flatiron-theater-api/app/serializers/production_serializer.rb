class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :image, :budget, :trending

  has_many :tickets
  has_many :users

def budget
  # "$#{sprintf('%.2f', object.budget)}"
  object.budget.to_s(:currency)
end

def trending
  object.tickets.count > 5 ? "This show is trending" : "Buy a ticket and become an influencer!"
end

end
