require 'rails_helper'

RSpec.describe Manager::TracksController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      track = FactoryGirl.create(:track)
      get :show, params: { id: track.slug }
      expect(response).to have_http_status(:success)
    end
  end
end
