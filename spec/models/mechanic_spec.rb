RSpec.describe Mechanic do
  it { should validate_presence_of :name }
  it { should validate_presence_of :years_of_experience }
end
