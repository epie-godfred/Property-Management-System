require 'rails_helper'

RSpec.describe Timetable, type: :model do
  describe 'included fields' do
    it { is_expected.to respond_to(:arrival_time) }
    it { is_expected.to respond_to(:departure_time) }
    it { is_expected.to respond_to(:day) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:train) }
    it { is_expected.to belong_to(:station) }
  end

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:day).is_less_than_or_equal_to(6) }
    it { is_expected.to validate_numericality_of(:day).is_greater_than_or_equal_to(0) }
  end
end
