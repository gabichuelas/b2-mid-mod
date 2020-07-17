RSpec.describe Ride do
  it { should belong_to :park }

  it { should have_many :ride_mechanics }
  it { should have_many :mechanics, through: :ride_mechanics }
end
