RSpec.describe 'as a visitor' do
  describe 'When I visit an amusement park’s show page' do

    before :each do
      @hershey = Park.create!(name: 'Hershey Park', admission: 50.00)

      @bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)
      @storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
      @light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
    end

    it 'I see the name and price of admissions for that amusement park' do

      visit "/parks/#{@hershey.id}"

      expect(page).to have_content('Hershey Park')
      expect(page).to have_content('Admissions: $50.00')
    end

    it 'And I see the names of all the rides that are at that theme park listed in alphabetical order' do
      # ..
      visit "/parks/#{@hershey.id}"

      within(".rides-#{@hershey.id}") do
        expect(page).to have_content('Lightning Racer')
        expect(page).to have_content('Storm Runner')
        expect(page).to have_content('The Great Bear')
      end
    end

    it 'And I see the average thrill rating of this amusement park’s rides' do

      visit "/parks/#{@hershey.id}"

      expect(page).to have_content('Average Thrill Rating: 7.0')
    end
  end
end
