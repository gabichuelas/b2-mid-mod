RSpec.describe Ride do
  describe 'relationships' do
    it { should belong_to :park }
    it { should have_many :ride_mechanics }
    it { should have_many(:mechanics).through(:ride_mechanics) }
  end

  before :each do
    @bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)
    @storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
    @light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
  end

  it '#sort_alphabetically: can list rides in alphabetical order' do

    expect(Ride.sort_alphabetically).to eq([@light_racer, @storm_runner, @bear])
  end
end
