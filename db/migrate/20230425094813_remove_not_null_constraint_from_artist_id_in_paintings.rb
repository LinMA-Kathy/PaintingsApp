class RemoveNotNullConstraintFromArtistIdInPaintings < ActiveRecord::Migration[7.0]
  def change
    change_column_null :paintings, :artist_id, true
  end
end
