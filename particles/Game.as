package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.utils.getTimer;
	
	public class Game extends MovieClip {

		static public var deltaTime:Number = 0;
		private var prevTime:int = 0;
	
		// TODO: create a variable to reference the particles
		// TODO: create a "timer" variable to delay bubbles from spawning
		
		public function Game() {

			addEventListener(Event.ENTER_FRAME, gameLoop);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, handleClick);
			
		}
		private function gameLoop(e:Event):void {
			calcDeltaTime();
			// TODO: call a method to periodically spawn bubbles
			// TODO: call a method to update particles (and remove them if dead)
		}

		private function calcDeltaTime():void {
			var currTime:int = getTimer();
			deltaTime = (currTime - prevTime)/1000.0;
			prevTime = currTime;
		}
		private function handleClick(e:MouseEvent):void {
			// TODO: spawn explosion particles
		}
	}
}
