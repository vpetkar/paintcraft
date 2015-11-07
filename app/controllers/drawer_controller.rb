class DrawerController < ApplicationController
  @@pixels
  def setColor(location, code)
    @@pixels[location] = code
  end
  def draw
    @@pixels = Array.new(16) {
      Array.new(16) {
        "FFFFFF"
      }
    }
    @pixels = @@pixels
  end
  def store
    respond_to do |format|
      format.json {
        @@pixels[params[:x].to_i][params[:y].to_i] = params[:color]
        render json: {color: "TEST"}
      }
    end
  end
  def printPixels
    @@pixels.each {
      |k, v|
      puts "#{k} on #{v}"
    }
  end
end
