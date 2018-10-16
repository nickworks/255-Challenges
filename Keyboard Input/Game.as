package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	
	
	public class Game extends MovieClip {
		
		// TODO: add property(ies) to track the state of the 'B' key
		
		public function Game() {
			addEventListener(Event.ENTER_FRAME, gameLoop);
			// TODO: add event listeners that listen for keyboard events
		}
		private function gameLoop(e:Event):void {
			

			// TODO: use variables that track the state of the 'B' key to decide when to call shrink() and embiggen()
			
		}
		private function shrink(mc:MovieClip):void {
			mc.scaleX += (1 - mc.scaleX) * .25;
			mc.scaleY = mc.scaleX;
		}
		private function embiggen(mc:MovieClip):void {
			mc.scaleX = mc.scaleY = 2;
		}
		// TODO: create event handler functions for keyboard events
		// In these event handlers, DO NOT scale either bubble1 or bubble2
		// In these event handlers, DO NOT call the embiggen() or shrink() methods
	}
	
}
