class SetDefaultUserIdForArtists < ActiveRecord::Migration[7.0]
  def up
    change_column_default :artists, :user_id, from: nil, to: 1
  end

  def down
    change_column_default :artists, :user_id, from: 1, to: nil
  end
end
