package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Game extends MovieClip {
		
		// TODO: make a variable to hold the current scene
		
		public function Game() {
			addEventListener(Event.ENTER_FRAME, gameLoop);
			// TODO: switch to the title scene
		}
		private function gameLoop(e:Event):void {
			// TODO: update() the current scene
			// TODO: give this class the ability to change the current scene
		}
		
	}	
}
