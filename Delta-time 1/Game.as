package  {		import flash.display.MovieClip;	import flash.events.Event;
	import flash.utils.getTimer;		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {
		
		/** Delta time variable. */
		public static var dt: Number = 0;

		/** Scaled delta time variable. */
		public static var dtScaled: Number = 0;

		/** Current time variable. */
		public static var time: Number = 0;

		/** Current time scale. */
		public static var scale: Number = 1;

		/** Previous time variable. */
		private static var timePrev: Number = 0;		
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			var dt:Number = calcDeltaTime();			circle.update(dt);		}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */		private function calcDeltaTime():Number {
			
			time = getTimer();
			dt = (time - timePrev) / 1000;
			dtScaled = dt * scale;
			timePrev = time;
			
			return dtScaled;		}	}}