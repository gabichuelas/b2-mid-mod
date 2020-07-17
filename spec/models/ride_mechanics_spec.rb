RSpec.describe RideMechanics do
  it { should belong_to :rides }
  it { should belong_to :mechanics }
end
