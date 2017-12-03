class Contact < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_many :runnings, dependent: :destroy
  has_many :publisheds, dependent: :destroy
  has_many :completeds, dependent: :destroy
  has_many :faileds, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "300x300>" },
      default_url: "/images/:style/default_avatar_icon.png",
      path: ':rails_root/public/system/pictures/image/:id_partition/:style/:filename'

  validates_presence_of :name, :surname, :login, :password,
    :phone, :rating, :virginity

  do_not_validate_attachment_file_type :avatar
end
