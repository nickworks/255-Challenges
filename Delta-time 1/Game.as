package {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getTimer;
	/**
	 * This class defines the behavior and state of this game, in
	 * which a single circle moves across the screen. Incredible!
	 */
	public class Game extends MovieClip {
		static var time: Number = 0;
		static var previousTime: Number = 0;
		static var deltaTime: Number = 0;
		/**
		 * This constructor sets up an ENTER_FRAME eventlistener.
		 */
		public function Game() {
			addEventListener(Event.ENTER_FRAME, handleFrame);
		}
		/**
		 * This event handler is our game loop. It tells the circle object to update.
		 * @param	e	The Event object that called this handler function.
		 */
		private function handleFrame(e: Event): void {
			var dt: Number = calcDeltaTime();
			circle.update();
		}
		/**
		 * This method calculates and returns delta-time, in seconds.
		 * @return	How much time has pass since the previous frame (in seconds).
		 */
		public static function calcDeltaTime(): Number {
			time = getTimer();
			deltaTime = (time - previousTime) / 1000;
			previousTime = time;

			return deltaTime;
		}
	}
}