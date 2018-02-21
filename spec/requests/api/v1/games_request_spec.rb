require 'rails_helper'

describe "Games API" do
    it "returns a results for specific game" do
      game = create(:game)

      get "/api/v1/games/#{game.id}"

      expect(response).to be_success
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result[:id]).to eq(game.id)
      expect(result)
    end
end
