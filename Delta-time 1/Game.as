package  {		import flash.display.MovieClip;	import flash.events.Event;
	import flash.utils.getTimer;		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {		
		// DONE: Make any necessary modifications to support the calculation and use of delta-time.
		/** How many real life seconds goes by per frame. */
		public static var dt:Number = 0;
		/** How long this application has been running. */
		public static var time:Number = 0;
		/** A cache of how long this application was running on the previous frame. */
		private static var timePrev:Number = 0;		
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			calcDeltaTime();			circle.update(dt);		}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */		private function calcDeltaTime():void {
			
			// DONE: Calulcate and return delta-time (in seconds)
			time = getTimer();
			dt = (time - timePrev) / 1000;
			timePrev = time; // cache for next frame		}	}}