class Running < ApplicationRecord
  belongs_to :contact

  validates_presence_of :text
end
