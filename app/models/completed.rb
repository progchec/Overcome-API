class Completed < ApplicationRecord
  belongs_to :contact

  validates_presence_of :text, :img_path, :post_rating
end
