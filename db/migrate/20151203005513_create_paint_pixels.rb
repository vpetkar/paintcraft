class CreatePaintPixels < ActiveRecord::Migration
  def change
    create_table :paint_pixels do |t|
      t.string :session
      t.string :x
      t.string :y
      t.string :color

      t.timestamps null: false
    end
  end
end
