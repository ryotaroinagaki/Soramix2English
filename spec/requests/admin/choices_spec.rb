require 'rails_helper'

RSpec.describe "Admin::Choices", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/admin/choices/create"
      expect(response).to have_http_status(:success)
    end
  end

end
