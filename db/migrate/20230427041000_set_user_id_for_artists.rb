class SetUserIdForArtists < ActiveRecord::Migration[7.0]
  def up
    Artist.where(user_id: nil).update_all(user_id: 1)
  end

  def down

  end
end
