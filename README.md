# Ruby-Sketchup---3D-Terrain-Lanscape-Mesh-Grid-via-Perlin-Noise

Name: Hüseyin
SURNAME: BİÇEN
NUMBER: 150304032
COURSE: Computer Aided Design
   
---------------------------------------------------------------------------------------------------------------------------------------
   
* Here we tried to simulate mesh grid-based earth shapes in 3D. For this purpose, perlin noise is used to achieve similarity to real life.
* The difference between the previous z is the lowest altitude blue (representing the lakes), and the highest peaks are green.
* According to the previous project, the difference is slightly more similar to that of the real world. The top of the hills are white (representing the snow).

homework_1.rb
homework_2.rb
homework_3.rb

For the above ruby files to work, you need to add the files in the "lib" folder to the Ruby library.

1-) C:\Program Files\SketchUp\SketchUp 2015\Tools\RubyStdLib 
	Open Directory
2-) Move the "perlin_noise.rb" and "perlin" files in the "lib" folder to the directory in step 1.


-----------------------------------------------------------------------------------------------------------------------

Code Structure

* n = 50x50 creates a field.
* scl = Determines the length of the isosceles triangle (equal to lengths).
* off = a constant multiplier for the noise function
* dizi = array with random values

* myMap = It is the method that draws values in a given range to the range we want.
* mySetup = It is the method that fills the array.
* myDraw = The method showing the drawing on the screen.


NOTE: I used a library to create the Perlin Noise array.

------------------------------------------------------------------------------------------------------------------------

References

* https://github.com/junegunn/perlin_noise
* https://ruby.sketchup.com/
* https://www.tutorialspoint.com/ruby/
