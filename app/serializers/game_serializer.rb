class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :scores

  # has_many :plays, key: "scores"

  def game_id
    object.id
  end

  def scores
    object.total_score
  end

end
