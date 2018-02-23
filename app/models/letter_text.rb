class LetterText < ApplicationRecord
  has_many :letters

  #站内信群发，符号()内是 Controller 顺序传递的两个参数
  #根据 class 类名，默认给实例变量 @letter_text 使用
  #元编程中的 self.方法名 的命名方式，可以给其他变量使用，详细看《ruby 元编程》
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
