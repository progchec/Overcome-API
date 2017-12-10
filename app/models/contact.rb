class Contact < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_many :runnings, dependent: :destroy
  has_many :publisheds, dependent: :destroy
  has_many :completeds, dependent: :destroy
  has_many :faileds, dependent: :destroy

  has_attached_file :avatar, styles: { medium: "300x300>" },
      default_url: "/system/medium/default_avatar_icon.png",
      path: ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename'

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates_presence_of :name, :surname, :login, :password,
    :phone, :rating, :virginity

  do_not_validate_attachment_file_type :avatar
end
