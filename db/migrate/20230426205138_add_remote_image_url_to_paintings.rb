class AddRemoteImageUrlToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :remote_image_url, :string
  end
end
