require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe '/home' do
    it 'returns a successful request' do
      get '/home/home'
      expect(response).to have_http_status(:ok)
    end

    it 'renders the home view' do
      get '/home/home'
      expect(response).to render_template(:home)
    end
  end

end
