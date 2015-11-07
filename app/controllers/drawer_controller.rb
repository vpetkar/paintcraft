class DrawerController < ApplicationController
  def setColor(location, code)
    @pixels[location] = code
  end
  def draw
    @pixels = Array.new(16) {
      Array.new(16) {
        "FFFFFF"
      }
    }
  end
  def store
    puts params
    respond_to do |format|
      format.json {
        render json: {color: "TEST"}
      }
    end
  end
  def printPixels
    @pixels.each {
      |k, v|
      puts "#{k} on #{v}"
    }
  end
end
