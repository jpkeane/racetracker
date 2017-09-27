require 'rails_helper'

RSpec.describe FixturesController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      fixture = FactoryGirl.create(:fixture)
      get :show, params: { id: fixture.slug }
      expect(response).to have_http_status(:success)
    end
  end
end
