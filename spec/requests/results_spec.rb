require 'rails_helper'

RSpec.describe "Results", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/results/create"
      expect(response).to have_http_status(:success)
    end
  end

end
