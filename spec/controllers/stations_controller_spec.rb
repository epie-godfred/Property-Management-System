require 'rails_helper'

RSpec.describe StationsController, type: :controller do
  let(:station1) { FactoryGirl.create(:station) }
  let(:station2) { FactoryGirl.create(:station) }

  describe 'GET #index' do
    before(:each) do
      station1
      station2
    end

    it 'returns all stations' do
      get :index

      expect(assigns(:stations).to_a).to eq([station1, station2])
    end

    it 'renders index template' do
      get :index

      expect(response).to render_template(:index)
    end
  end
end