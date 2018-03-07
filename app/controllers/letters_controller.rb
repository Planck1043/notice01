class LettersController < ApplicationController
  def index
    @letters = Letter.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @letter = Letter.find(params[:id])
    recever_id = @letter.recever_id
    sender_id = @letter.sender_id

    recever = RestClient.get("http://192.168.1.242:3333/api/v1/users/#{recever_id}")
    sender = RestClient.get("http://192.168.1.242:3333/api/v1/users/#{sender_id}")
    @recever = JSON.parse(recever)["user"]
    @sender = JSON.parse(sender)["user"]
  end

  def destroy
    @letter = Letter.find(params[:id])
    @letter.destroy

    redirect_to letters_path
  end
end
