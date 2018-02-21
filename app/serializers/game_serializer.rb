class GameSerializer < ActiveModel::Serializer
  attributes :game_id

  has_many :plays

  def game_id
    object.id
  end

end
