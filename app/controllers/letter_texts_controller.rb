class LetterTextsController < ApplicationController
  def new
    @letter = Letter.new
    @letter_text = LetterText.new
    @users = User.all
  end

  def create
    @letter = Letter.new
    @letter_text = LetterText.new(letter_text_params)
    
    if @letter_text.save
      @letter.letter_text_id = @letter_text.id
      @letter.rec_id = params[:rec_id]
      @letter.save

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
