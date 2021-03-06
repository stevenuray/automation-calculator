require 'rails_helper'

RSpec.describe Solution, type: :model do
  let(:solution) { create(:solution) }

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:initial_cost).only_integer }
    it { is_expected.to validate_numericality_of(:iteration_cost).only_integer }
    it { is_expected.to belong_to(:automation_scenario) }
    specify do
      is_expected
        .to validate_numericality_of(:iteration_cost)
        .is_greater_than(0)
    end
    specify do
      is_expected.to validate_numericality_of(:initial_cost).is_greater_than(0)
    end
  end
end
