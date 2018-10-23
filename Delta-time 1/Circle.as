package  {		import flash.display.MovieClip;		/**
	 * This class defines the behavior and state of a circle
	 * that moves across the screen.
	 */	public class Circle extends MovieClip {		
		/**
		 * This method updates this object's position, causing it to move.
		 */		public function update(game:Game):void {
			
			// TODO: Modify this method to use delta-time.
			
			// TODO: Make this object move at a rate of 200 pixels-per-second.
			/*delta time goes by subtracting the prevTime from current time by 
			* then multiplying it by 200 it becomes 200 pixels per second 
			*/			x += 200 * game.dt;
						if(x > 590) x = -40;		}	}}