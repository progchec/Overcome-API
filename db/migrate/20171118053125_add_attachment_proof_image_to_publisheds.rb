class AddAttachmentProofImageToPublisheds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :publisheds do |t|
      t.attachment :proof_image
    end
  end

  def self.down
    remove_attachment :publisheds, :proof_image
  end
end
