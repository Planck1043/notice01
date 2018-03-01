class Notice < ApplicationRecord
  has_many :posts
  has_many :censors
  belongs_to :notice_item
end
