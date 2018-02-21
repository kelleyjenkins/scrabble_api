class PlaySerializer < ActiveModel::Serializer
  attributes :user_id, :score

  has_many :users


end
