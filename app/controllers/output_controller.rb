class OutputController < ApplicationController
  require "rmagick"
  include Magick
  def generatePNG
    img = Image.new(16, 16)
    img2 = Image.new(16,16)
    PaintPixel.where("session = '#{session.id}'").each do |dbpix|
      pix = img.pixel_color(dbpix.x.to_i, dbpix.y.to_i)
      img2.pixel_color(dbpix.y.to_i, dbpix.x.to_i, dbpix.color)
    end
    img2.write("public/drawing/#{session.id}.png") {
      self.format = "png"
    }
  end
end
