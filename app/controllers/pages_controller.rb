class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @photo = Photo.first
    @message = Message.new
  end
end
