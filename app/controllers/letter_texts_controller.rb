class LetterTextsController < ApplicationController
  def new
    @letter = Letter.new
    @letter_text = LetterText.new
    @users = User.all
  end

  def create
    @letter_text = LetterText.new(letter_text_params)
    @letter_rec = Array.new
    @letter_rec = params[:rec_id]

    if @letter_text.save
      #符号()内是传递到 model 的两个参数，顺序对应
      @letter_text.letter_send(@letter_rec, params[:send_id])
      redirect_to letters_path
    else
      render "new"
    end
  end

  private

  def letter_text_params
    params.require(:letter_text).permit(:title, :text)
  end
end
