class Published < ApplicationRecord
  belongs_to :contact
  before_validation :parse_image
  attr_accessor :image_base

  mount_base64_uploader :proof_image, AvatarUploader

  has_attached_file :proof_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :proof_image, presence: true
  do_not_validate_attachment_file_type :proof_image

  validates_presence_of :text, :post_rating

  private
    def parse_image
      image = Paperclip.io_adapters.for(image_base)
      image.original_filename = "published_proof_image.jpg"
      self.proof_image = image
    end
end
