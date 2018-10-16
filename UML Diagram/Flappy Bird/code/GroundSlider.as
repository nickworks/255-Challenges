package code {
	import flash.display.MovieClip;
	
	/**
	 * This class contains two MovieClips and moves them together to create the illusion of an endlessly-panning background.
	 */
	public class GroundSlider extends MovieClip{

		/**
		 * The velocity to scroll the ground (pixels-per-second).
		 */
		private const SPEED_X:Number = -200;
		/**
		 * The first MovieClip (just artwork).
		 */
		private var ground1:Ground = new Ground();
		/**
		 * The first MovieClip (just artwork).
		 */
		private var ground2:Ground = new Ground();
		
		/**
		 * This constructor adds the ground objects and positions itself.
		 */
		public function GroundSlider() {
			addChild(ground1);
			addChild(ground2);
			y = 490;
		}
		/**
		 * This method is called every frame; it is responsible for moving the ground objects together.
		 * @param dt:Number	This is the amount of time that has passed since the previous frame (delta time).
		 */
		public function update():void {
			ground1.x += SPEED_X * Game.deltaTime;
			if(ground1.x < -ground1.width) ground1.x += ground1.width;
			ground2.x = ground1.x + ground1.width; // always set the second image to be to the right of image 1
		}
	}
}
