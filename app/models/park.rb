class Park < ApplicationRecord
  has_many :rides

  def avg_thrill_rating
    self.rides.average(:rating)
  end

  def rides_alphabetically
    self.rides.order(:name)
  end
end
