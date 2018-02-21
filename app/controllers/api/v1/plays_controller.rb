class Api::V1::PlaysController < ApplicationController
  attributes :user_id

  def user_id
    object.where(user_id: 1)
  end
end
