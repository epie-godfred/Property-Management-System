require 'rails_helper'

RSpec.describe Train, type: :model do
  describe 'included fields' do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:number) }
    it { is_expected.to respond_to(:wagon_count) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:timetables) }
    it { is_expected.to have_many(:stations) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:number) }
    it { is_expected.to validate_uniqueness_of(:number) }
    it { is_expected.to validate_numericality_of(:wagon_count).is_less_than_or_equal_to(50) }
    it { is_expected.to validate_numericality_of(:wagon_count).is_greater_than_or_equal_to(2) }
  end
end