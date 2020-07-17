class Park < ApplicationRecord
  has_many :rides

  def avg_thrill_rating
    self.rides.average(:rating)
  end
end
