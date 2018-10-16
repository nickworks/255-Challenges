package  {
	
	import flash.display.MovieClip;
	
	/** This class contains the behavior and state of the player's avatar. */
	public class Player extends MovieClip {
		
		/** This is how quickly (in frames-per-second) to play the animation frames. */
		private const ANIM_FPS:int = 8;
		/** This is a countdown timer. When it hits 0, it cues the next animation frame. */
		private var delayFrame:Number = 0;
		
		/** This is the constructor. */
		public function Player() {
			x = 275;
			y = 200;
			stop();
		}
		
		// TODO: Implement the update design pattern.
		// TODO: Make sure animate() is called each frame.
		
		/** This method controls the Player's animation frames. */
		private function animate():void {
			delayFrame -= Game.deltaTime;
			if(delayFrame <= 0){
				var nxt = (currentFrame + 1);
				gotoAndStop(nxt > totalFrames ? 1 : nxt);
				delayFrame += 1/ANIM_FPS;
			}
		}
	}
}
