package  {
	
	import flash.utils.getTimer;
	
	public class Time {
		
		public static var dt:Number = 0;
		public static var time:Number = 0;
		public static var timePrev = 0;
				

		public static function update():void {
			time = getTimer();
			dt = (time - timePrev) / 1000;
			timePrev = time;
		}

	}
	
}
