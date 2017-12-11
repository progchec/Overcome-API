class AddPublishedImageToPublisheds < ActiveRecord::Migration[5.1]
  def change
    add_column :publisheds, :published_image, :string
  end
end
