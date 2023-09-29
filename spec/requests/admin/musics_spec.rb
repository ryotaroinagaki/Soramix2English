require 'rails_helper'

RSpec.describe "Admin::Musics", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/admin/musics/create"
      expect(response).to have_http_status(:success)
    end
  end

end
