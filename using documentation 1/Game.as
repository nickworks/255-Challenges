package  {
	
	import flash.display.MovieClip;
	import flash.filters.BlurFilter;
	
	
	public class Game extends MovieClip {
		
		public function Game() {

			var black:uint = 0x000000;
			var red:uint = 0xFF0000;
			
			// Every MovieClip has a property called "graphics".
			// The "graphics" property's data type is the Graphics class.
			
			// TODO: use the AS3 documentation to lookup the Graphics class.
			// TODO: change the following code to draw BLACK circles instead of RED circles
			// TODO: change the following code to give each of the four circles a radius of 5
			// Do NOT change the positions of the circles

			graphics.beginFill(red);
			graphics.drawCircle(100, 100, 120);
			graphics.drawCircle(200, 200, 80);
			graphics.drawCircle(100, 200, 20);
			graphics.drawCircle(200, 100, 40);
			graphics.endFill();

			// TODO: use the Graphics class to draw two black lines and one red circle
			
		}
	}
	
}
