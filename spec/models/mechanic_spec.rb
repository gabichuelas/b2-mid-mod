RSpec.describe Mechanic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :years_of_experience }

  it { should have_many :ride_mechanics }
  it { should have_many(:rides).through(:ride_mechanics) }
end
