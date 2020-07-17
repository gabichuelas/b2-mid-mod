RSpec.describe Park do
  it { should have_many :rides }

  describe '#avg_thrill_rating' do

    before :each do
      @hershey = Park.create!(name: 'Hershey Park', admission: 50.00)

      @light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
      @storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
      @bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)
    end

    it 'can calculate average rating for all rides in a given park' do

      expect(@hershey.avg_thrill_rating).to eq(7)
    end
  end
end
