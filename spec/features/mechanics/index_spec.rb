RSpec.describe 'as a user' do
  describe 'when I visit a mechanics index page' do

    before :each do
      
      @sam = Mechanic.create!(name: 'Sam Mills', years_of_experience: 10)
      @kara = Mechanic.create!(name: 'Kara Smith', years_of_experience: 11)
    end

    it 'I see a header saying "All Mechanics", and I see a list of all mechanic\'s names and years of experience' do

      visit "/mechanics"

      expect(page).to have_content('All Mechanics')
      expect(page).to have_content('Sam Mills')
      expect(page).to have_content('10 years of experience')
      expect(page).to have_content('Kara Smith')
      expect(page).to have_content('11 years of experience')
    end
  end
end
