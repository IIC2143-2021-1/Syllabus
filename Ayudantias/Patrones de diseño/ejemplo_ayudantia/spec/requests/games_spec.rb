require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/games/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/games/index"
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/games/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/games/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
