package  {		import flash.display.MovieClip;	import flash.events.Event;		/**
	 * This class defines the behavior and state of the game, in 
	 * which two objects rotate to always be pointing at one another.
	 */	public class Game extends MovieClip {
		
		/** The angle that the pointer1 is facing. */
		public var angle1: Number = 0;
		
		/** The angle that the pointer2 is facing. */
		public var angle2: Number = 0;		
		/**
		 * This constructor sets up an ENTER_FRAME event listener.
		 */		public function Game() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}
		/*
		 * This event handler create our game loop.
		 * @param	e	The Event object that called this handler function.
		 */		private function handleFrame(e:Event):void {			
			// move pointer1 to the mouse position:			pointer1.x = mouseX;			pointer1.y = mouseY;			
			// Change angle based on pointer positions 
			var tx: Number = pointer2.x - pointer1.x;
			var ty: Number = pointer2.y - pointer1.y;
			
			// Change pointer1 angle
			angle1 = Math.atan2(ty, tx);
			angle1 *= 180 / Math.PI;
			pointer1.rotation = angle1 - 90;
			
			// Change pointer2 angle
			angle2 = Math.atan2(ty, tx);
			angle2 *= 180 / Math.PI;
			pointer2.rotation = angle2 + 90;		}	}}