class Failed < ApplicationRecord
  belongs_to :contact

  validates_presence_of :text, :post_rating
end
