package  {		import flash.display.MovieClip;		/**
	 * This class defines the behavior and state of a circle
	 * that moves across the screen.
	 */	public class Circle extends MovieClip {		
		/**
		 * This method updates this object's position, causing it to move.
		 */		public function update(dtScaled: Number):void {
						x += 200 * dtScaled;
						if(x > 590) x = -40;		}	}}