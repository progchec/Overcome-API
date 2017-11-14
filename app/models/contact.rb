class Contact < ApplicationRecord
  has_many :runnings, dependent: :destroy
  has_many :publisheds, dependent: :destroy
  has_many :completeds, dependent: :destroy
  has_many :faileds, dependent: :destroy

  validates_presence_of :name, :surname, :login, :password,
    :phone, :avatar_path, :rating
end
