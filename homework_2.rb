require 'perlin_noise'

@mod = Sketchup.active_model # Open model
@ent = @mod.entities # All entities in model
@sel = @mod.selection # Current selection
@view = @mod.active_view

@n = 50
@scl = 15;
@off = 0.1

@dizi = Array.new(@n) {Array.new(@n)}




def myMap(deg, in_min, in_max, out_min, out_max)
  return (deg - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
end

def mySetup()
  n2d = Perlin::Noise.new 2
  (0..@n-1).each {|y|
    (0..@n-1).each {|x|
      @dizi[x][y] = myMap(n2d[x*@off, y*@off], 0, 1, 1, 255);
    }
  }
end

def myDraw()
  (0..@n-3).each {|y|
    (0..@n-2).each {|x|
      pts = [[x*@scl,y*@scl,@dizi[x][y]],[(x+1)*@scl,y*@scl,@dizi[x+1][y]],[x*@scl,(y+1)*@scl,@dizi[x][y+1]]]
      pts2 = [[(x+1)*@scl,y*@scl,@dizi[x+1][y]],[x*@scl,(y+1)*@scl,@dizi[x][y+1]],[(x+1)*@scl,(y+1)*@scl,@dizi[x+1][y+1]]]
      face = @ent.add_face pts
      face2 = @ent.add_face pts2
      
      gg = (@dizi[x][y+1]).round + 50
      bb = 255 - (@dizi[x][y+1]).round
      face.material = [0,gg,bb]
      face2.material = [0,gg,bb]
      
      #sleep 0.4
      #@view.refresh
    }
  }
end


mySetup()
myDraw()
