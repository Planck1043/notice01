class LettersController < ApplicationController
  def index
    @letters = Letter.all
  end

  def show
    @letter = Letter.find(params[:id])
  end

  def destroy
    @letter = Letter.find(params[:id])
    @letter.destroy

    redirect_to letters_path
  end
end
