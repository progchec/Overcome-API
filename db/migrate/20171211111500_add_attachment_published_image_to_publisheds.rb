class AddAttachmentPublishedImageToPublisheds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :publisheds do |t|
      t.attachment :published_image
    end
  end

  def self.down
    remove_attachment :publisheds, :published_image
  end
end
