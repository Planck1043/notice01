class Notice < ApplicationRecord
  has_many :posts
  belongs_to :notice_item
end
