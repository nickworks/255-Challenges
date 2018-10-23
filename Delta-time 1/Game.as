package  {		import flash.display.MovieClip;	import flash.events.Event;
	import flash.utils.getTimer;		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {		
		// TODO: Make any necessary modifications to support the calculation and use of delta-time.
		
		/** The amount of time that has passed since the start of the game. */
		public static var time:Number = 0;
		/** The amount of time that has passed since the last frame. */
		public static var timeDelta:Number = 0;
		/** The amount of time that had passed since the start of the game last frame. */
		public static var timeLast:Number = 0;		
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			var dt:Number = calcDeltaTime();			circle.update();
			//trace(timeDelta);
					}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */		private function calcDeltaTime():Number {
			
			// TODO: Calulcate and return delta-time (in seconds)
			
			time = getTimer();
			timeDelta = (time - timeLast)/1000;
			timeLast = time;
			
			return timeDelta;		}	}}