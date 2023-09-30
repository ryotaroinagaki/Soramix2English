require 'rails_helper'

RSpec.describe "Admin::Questions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/questions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/admin/questions/create"
      expect(response).to have_http_status(:success)
    end
  end

end
