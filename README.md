# Paintcraft
Educational tool for art classes, draw anything and import into minecraft.

This is a Rails/Java application that allows a user to draw a 16x16 on a web app, which later translates into a BMP, and then a PNG, which is gathered by an associated Minecraft Mod that will import a functional version of the PNG as an item in Minecraft.

This project was started from the Product Development and Management for Engineers and Computer Scientists (GNG2101) at the University of Ottawa.

All code is open source, and freely available to the public under the Apache 2.0 License. 

##How to launch:
```
bundle install
rake db:migrate
rails server
```

##Dependencies
Please ensure you have a working varient of ImageMagick, Rails 4.2+, Ruby 2.2+, and SQLite.
