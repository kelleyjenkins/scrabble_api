class Game < ApplicationRecord
  belongs_to :player_1, class_name: "User", foreign_key: :player_1_id
  belongs_to :player_2, class_name: "User", foreign_key: :player_2_id

  has_many :plays

  def total_score
    [{ "user_id": 1,
      "score": plays.where("user_id = '1'").sum(:score)
    },
    
    {"user_id": 2,
    "score": plays.where("user_id = '2'").sum(:score)}]
  end

end
