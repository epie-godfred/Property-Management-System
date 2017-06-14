require 'rails_helper'

RSpec.describe Station, type: :model do
  describe 'included fields' do
    it { is_expected.to respond_to(:name) }
    it { is_expected.to respond_to(:phone) }
    it { is_expected.to respond_to(:information) }
  end

  describe 'associations' do
    it { is_expected.to have_one(:address) }
    it { is_expected.to have_many(:beverage_stores) }
    it { is_expected.to have_many(:timetables) }
    it { is_expected.to have_many(:trains) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    ["+38067 456 4444 343", "+38(067) 456 44 44", "+8067 456 44 44", "067 456 44 44", "+71234567899"].each do |phone|
      it { is_expected.to allow_value(phone).for(:phone) }
    end


    ["+ 38067 456 4444 343", "+38067 456 4444 asd", "456 4444", "name", "+38067 456 444411111111111111111111111"].each do |phone|
      it { is_expected.not_to allow_value(phone).for(:phone) }
    end
  end
end