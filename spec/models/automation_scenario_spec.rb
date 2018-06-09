require 'rails_helper'

RSpec.describe AutomationScenario, type: :model do
  let(:scenario) { create(:automation_scenario) }

  describe 'validations' do
    it { is_expected.to belong_to(:owner) }
    it { is_expected.to validate_numericality_of(:iteration_count).only_integer }
    it { is_expected.to validate_numericality_of(:iteration_count).is_greater_than(0) }
  end
end
