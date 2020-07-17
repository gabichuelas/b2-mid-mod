RSpec.describe RideMechanic do
  it { should belong_to :ride }
  it { should belong_to :mechanic }
end
