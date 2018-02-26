class Api::V1::PlaysController < ActionController::API

  def create
    @play = Play.new(play_params)
    if @play.save
      render json: @play
    end
  end

  private

  def play_params
    params.require(:play).permit(:user_id, :game_id, :word)

  end
end
