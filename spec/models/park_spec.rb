RSpec.describe Park do
  it { should have_many :rides }

    before :each do
      @hershey = Park.create!(name: 'Hershey Park', admission: 50.00)

      @bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)
      @storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
      @light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
    end

    it '#avg_thrill_rating: can calculate average rating for all rides in a given park' do

      expect(@hershey.avg_thrill_rating).to eq(7)
    end

    it '#sort_alphabetically: can list rides in alphabetical order' do

      expect(@hershey.rides).to eq([@bear, @storm_runner, @light_racer])

      expect(@hershey.rides_alphabetically).to eq([@light_racer, @storm_runner, @bear])
    end
end
