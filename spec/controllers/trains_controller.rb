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

  describe 'GET #show' do
    let(:station) { FactoryGirl.create(:station) }
    let(:timetable) { FactoryGirl.create(:timetable, station: station, train: train1) }

    context 'train with such id is present in DB' do
      before(:each) do
        timetable
      end

      it 'assigns @train' do
        get :show, params: { id: train1.id }

        expect(assigns(:train)).to eql(train1)
      end

      it 'assigns @timetables' do
        get :show, params: { id: train1.id }

        expect(assigns(:timetables).to_a).to eql([timetable])
      end

      it 'renders show template' do
        get :show, params: { id: train1.id }

        expect(response).to render_template(:show)
      end
    end

    context 'train with such id is not present in DB' do
      it 'redirects to the 404 page' do
        get :show, params: { id: 0 }

        expect(response).to render_template('errors/error_404')
      end
    end
  end
end