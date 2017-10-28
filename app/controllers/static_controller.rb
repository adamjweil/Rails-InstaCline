class StaticController < ApplicationController

  def index
    @photo = Photo.new
    @new_photo = Photo.last
  end

end
