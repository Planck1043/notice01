class Letter < ApplicationRecord
  belongs_to :letter_text
  # belongs_to :sender,  foreign_key: "send_id"
  # belongs_to :recever, foreign_key: "rec_id"
end
