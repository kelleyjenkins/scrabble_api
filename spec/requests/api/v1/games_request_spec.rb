require 'rails_helper'

describe "Games API" do
    it "returns a results for specific game" do
      game = create(:game)
      user =create(:user)
      user2 = create(:user)
      play = create(:play, game: game, user: user)
      play2 = create(:play, game: game, user: user2)


      get "/api/v1/games/#{game.id}"

      expect(response).to be_success
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result[:game_id]).to eq(game.id)
      expect(result[:scores].count).to eq(2)
    end
end
