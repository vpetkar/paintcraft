class DrawerController < ApplicationController
  def draw
    @pixels = Hash.new("FFFFFF")
    for i in 0..16
      for j in 0..16
        setColor(i, j, "FFFFFF")
  end
  def setColor(x, y, code)
    @pixels[[x,y]] = code
  end
end
