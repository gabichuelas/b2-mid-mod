RSpec.describe 'as a user' do
  describe 'When I go to a mechanics show page' do

    before :each do
      @hershey = Park.create!(name: 'Hershey Park', admission: 50.00)

      @light_racer = @hershey.rides.create!(name: 'Lightning Racer', rating: 6)
      @storm_runner = @hershey.rides.create!(name: 'Storm Runner', rating: 7)
      @bear = @hershey.rides.create!(name: 'The Great Bear', rating: 8)

      @kara = Mechanic.create!(name: 'Kara Smith', years_of_experience: 11)

      RideMechanics.create!(ride_id: @light_racer.id, mechanic_id: @kara.id)
      RideMechanics.create!(ride_id: @storm_runner.id, mechanic_id: @kara.id)
    end

    it 'I see their name, years of experience, and names of all rides they’re working on' do

      visit "/mechanics/#{@kara.id}"

      expect(page).to have_content('Kara Smith')
      expect(page).to have_content('11 years of experience')
      expect(page).to have_content('Lightning Racer')
      expect(page).to have_content('Storm Runner')
    end

    it 'And I also see a form to add a ride to their workload; When I fill in that field with an id of an existing ride and hit submit; I’m taken back to that mechanics show page; And I see the name of that newly added ride on this mechanics show page' do

      visit "/mechanics/#{@kara.id}"

      select "#{@bear.id}", :from => "rides"
      click_on('Add Ride to Workload')

      expect(page).to have_content('The Great Bear')
    end
  end
end
