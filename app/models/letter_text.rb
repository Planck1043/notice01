class LetterText < ApplicationRecord
  has_many :letters

  #站内信群发与一对一发送 
  def letter_send(letter_rec, send_id)
    letter_rec.each do |t|
      @letter = Letter.new
      @letter.letter_text_id = self.id
      @letter.rec_id = t
      @letter.send_id = send_id
      @letter.save
    end
  end
end
