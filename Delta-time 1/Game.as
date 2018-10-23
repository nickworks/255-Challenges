package  {		import flash.display.MovieClip;	import flash.events.Event;	import flash.utils.getTimer;
		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {		
		// TODO: Make any necessary modifications to support the calculation and use of delta-time.		
		/**
		*keeps track of detsal time
		*/
		public static var dt:Number = 0;
		/**
		*this is what were using to scale the objects with
		*/
		public static var dtScaled:Number = 0;
		/**
		* keeps track of current time on screen
		*/
		public static var time:Number = 0;
		/**
		* this is the scaler
		*/
		public static var scale:Number = 1;
		/**
		* keeps track of the previous time on screen
		*/
		private static var timePrev:Number = 0;


		/** 
		*this gets the time based on what time it used to be and what is now
		*
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			var dt:Number = calcDeltaTime();			circle.update();
					}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */		private function calcDeltaTime():Number {
			
			// TODO: Calulcate and return delta-time (in seconds)
			time = getTimer();
			dt = (time - timePrev) / 1000;
			dtScaled = dt * scale;
			timePrev = time;// cache for next frame
			return 0;
			trace(dt);		}	}}