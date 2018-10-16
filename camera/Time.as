package {
	
	import flash.utils.getTimer;

	public class Time {

		static public var current:Number = 0;
		static public var previous:Number = 0;
		static public var deltaTime:Number = 0;
		
		static public function update():void {
			current = getTimer()/1000;
			deltaTime = current - previous;
			previous = current;
		}
	}
}
