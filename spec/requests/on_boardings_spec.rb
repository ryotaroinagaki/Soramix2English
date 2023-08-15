require 'rails_helper'

RSpec.describe "OnBoardings", type: :request do
  describe "GET /edit" do
    it "returns http success" do
      get "/on_boardings/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/on_boardings/update"
      expect(response).to have_http_status(:success)
    end
  end

end
