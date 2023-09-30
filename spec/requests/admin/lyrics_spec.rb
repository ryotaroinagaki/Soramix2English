require 'rails_helper'

RSpec.describe "Admin::Lyrics", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/admin/lyrics/create"
      expect(response).to have_http_status(:success)
    end
  end

end
