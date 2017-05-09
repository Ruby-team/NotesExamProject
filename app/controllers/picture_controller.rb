class PictureController < ApplicationController
client = Imgur.new(ee427e3c996a807)
  def index
    @pictures = Picture.all
  end

  def add(path_to_file, title)
      Imgur::LocalImage.new(path_to_file, title: title)
  end

end
