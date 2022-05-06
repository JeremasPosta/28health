require 'rails_helper'

RSpec.describe "Welcomes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      skip
      get "/welcome/index"
      expect(response).to have_http_status(:success)
    end
  end
end
