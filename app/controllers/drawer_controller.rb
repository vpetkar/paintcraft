class DrawerController < ApplicationController
  def draw
    reset_session
    for x in 0..16
      for y in 0..16
        PaintPixel.create(session: session.id, x: x, y: y, color:"#FFFFFF" );
      end
    end
  end
  def store
    respond_to do |format|
      format.json {
        paintpixel = PaintPixel.find_by(session: session.id, x: params[:x].to_i, y: params[:y].to_i)
        paintpixel.update(color: params[:color])
        render json: {color: "TEST"}
      }
    end
  end
end
