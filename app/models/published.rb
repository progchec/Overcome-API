class Published < ApplicationRecord
  belongs_to :contact
  mount_uploader :proof_image, ProofImageUploader

  has_attached_file :proof_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :proof_image, :presence => true
  do_not_validate_attachment_file_type :proof_image

  validates_presence_of :text, :post_rating
end
