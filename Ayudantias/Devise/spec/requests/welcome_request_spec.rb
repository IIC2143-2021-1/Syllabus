# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome', type: :request do
  describe 'index' do
    it 'returns a succesful request' do
      get '/'
      #   welcome#index
      expect(response).to have_http_status(:ok)
    end

    it 'renders index view' do
      get '/'
      #   welcome#index
      expect(response).to render_template(:index)
    end
  end
end
