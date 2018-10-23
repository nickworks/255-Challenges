package  {		import flash.display.MovieClip;	import flash.events.Event;		/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */	public class Game extends MovieClip {		
		// TODO: Make any necessary modifications to support the calculation and use of delta-time.

		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			Time.update();			circle.update();		}	}}