require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'included fields' do
    it { is_expected.to respond_to(:country) }
    it { is_expected.to respond_to(:city) }
    it { is_expected.to respond_to(:street) }
    it { is_expected.to respond_to(:number) }
    it { is_expected.to respond_to(:latitude) }
    it { is_expected.to respond_to(:longitude) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:station) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:street) }
    it { is_expected.to validate_presence_of(:number) }
  end
end