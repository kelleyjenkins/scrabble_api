require 'rails_helper'

describe "Plays API" do
  context "create post request" do
    it "can create a new play" do
      user = create(:user, id: 1)
      game = create(:game, id: 1)
      play_params = {user_id: user.id, game_id: game.id, word: "as"}

      post "/api/v1/games/1/plays", params: {play: play_params}

      expect(response).to be_success
      play = user.plays.last

      expect(play.word).to eq("as")

    end
  end
end
