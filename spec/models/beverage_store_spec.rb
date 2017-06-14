require 'rails_helper'

RSpec.describe BeverageStore, type: :model do
  describe 'included fields' do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:description) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:station) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end