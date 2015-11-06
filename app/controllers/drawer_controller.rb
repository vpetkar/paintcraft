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
  def printPixels
    @pixels.each {
      |k, v|
      puts "#{k} on #{v}"
    }
  end
end
