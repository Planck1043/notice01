class Letter < ApplicationRecord
  belongs_to :letter_text
  belongs_to :sender, class_name: "User", foreign_key: "send_id"
  belongs_to :recer, class_name: "User", foreign_key: "rec_id"
end
