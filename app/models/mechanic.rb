class Mechanic < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :years_of_experience
end
