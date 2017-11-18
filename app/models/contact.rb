class Contact < ApplicationRecord
  before_validation :parse_image
  attr_accessor :image_base

  mount_base64_uploader :avatar, AvatarUploader

  has_many :runnings, dependent: :destroy
  has_many :publisheds, dependent: :destroy
  has_many :completeds, dependent: :destroy
  has_many :faileds, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "600x600>", thumb: "100x100>" },
      default_url: "/images/:style/default_avatar_icon.png"

  validates_presence_of :name, :surname, :login, :password, :image_base,
    :phone, :rating, :virginity

  validates_attachment :avatar, :presence => true

  do_not_validate_attachment_file_type :avatar

  private
    def parse_image
      image = Paperclip.io_adapters.for(image_base)
      image.original_filename = "contact.jpg"
      self.avatar = image
    end
end
