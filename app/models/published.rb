class Published < ApplicationRecord
  belongs_to :contact
  mount_uploader :published_image, PublishedImageUploader

  has_attached_file :published_image, styles: { medium: "300x300>" },
  default_url: "/system/medium/image-not-avaliable.png"

  validates_attachment_content_type :published_image, content_type: /\Aimage\/.*\z/

  do_not_validate_attachment_file_type :published_image

  validates_presence_of :text, :post_rating, :published_image
end
