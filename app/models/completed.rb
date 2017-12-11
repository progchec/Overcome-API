class Completed < ApplicationRecord
  belongs_to :contact
  mount_uploader :proof_image, ProofImageUploader

  has_attached_file :proof_image, styles: { medium: "300x300>" },
  default_url: "/system/medium/image-not-avaliable.png"

  validates_attachment_content_type :proof_image, content_type: /\Aimage\/.*\z/

  validates_presence_of :text, :post_rating, :proof_image

  do_not_validate_attachment_file_type :proof_image
end
