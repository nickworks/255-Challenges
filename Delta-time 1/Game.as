package  {		import flash.display.MovieClip;	import flash.events.Event;	import flash.utils.getTimer;
		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {				/** is reference to deltaT for other classes to use*/
		public static var dt: Number = 0;
		/** hold the current delta time when set*/
		private var deltaT: Number = 0;
		/** this will help us keep track of the current delta time*/
		private var time: Number = 0;
		/** this holds the previous delta time when doing calculations for the next delta time*/
		private var timePrev: Number = 0;
		
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			dt = calcDeltaTime();			circle.update();		}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */		private function calcDeltaTime():Number {
			
			time = getTimer();
			deltaT = (time - timePrev) / 1000;
			timePrev = time; // cache for next frame
			return deltaT;		}	}}