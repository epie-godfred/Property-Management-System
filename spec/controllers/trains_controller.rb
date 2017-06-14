require 'rails_helper'

RSpec.describe TrainsController, type: :controller do
  let(:train1) { FactoryGirl.create(:train) }
  let(:train2) { FactoryGirl.create(:train) }

  describe 'GET #index' do
    before(:each) do
      train1
      train2
    end

    it 'returns all trains' do
      get :index

      expect(assigns(:trains).to_a).to eq([train1, train2])
    end

    it 'renders index template' do
      get :index

      expect(response).to render_template(:index)
    end
  end
end