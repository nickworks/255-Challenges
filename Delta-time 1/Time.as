package  {
	
	import flash.utils.getTimer;
	
	/** 
	 * This class handles calculation of delta time
	 * and its variables for use in other functions.
	 */
	
	
	/**
	 * This constructor defines the variables needed
	 * to calculate delta time.
	 */
	public class Time {
		
		/* This variable stores the time (in seconds) it took to update from the previous frame. */
		public static var dt:Number = 0;
		/* This variable stores the current timestamp in milliseconds. */
		public static var time:Number = 0;
		/* This variable stores the timestamp of the prevoius frame. */
		public static var timePrev = 0;
				
		/**
		 * This update function updates all three
		 * variables used to measure delta time.
		 */
		public static function update():void {
			/* Sets "time" to the current timestamp in milliseconds. */
			time = getTimer();
			/** 
			 * Sets "dt" to the current timestamp - the timestamp of the previous frame.
			 * Value is also divided by 1000 to measure in seconds.
			 */
			dt = (time - timePrev) / 1000;
			/* Sets "timePrev" to the current timestamp to cache it for the next frame. */
			timePrev = time;
			trace(dt);
		}

	}
	
}
