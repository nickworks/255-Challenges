package  {		import flash.display.MovieClip;	import flash.events.Event;		/**
	 * This class defines the behavior and state of the game, in 
	 * which two objects rotate to always be pointing at one another.
	 */	public class Game extends MovieClip {		
		/**
		 * This constructor sets up an ENTER_FRAME event listener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/*
		 * This event handler create our game loop.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			
			// move pointer1 to the mouse position:			pointer1.x = mouseX;			pointer1.y = mouseY;									// TODO: calculate angles for pointer1 and pointer2; set their rotation properties		}	}}