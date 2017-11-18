class AddAttachmentProofImageToCompleteds < ActiveRecord::Migration[5.1]
  def self.up
    change_table :completeds do |t|
      t.attachment :proof_image
    end
  end

  def self.down
    remove_attachment :completeds, :proof_image
  end
end
