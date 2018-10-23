package  {	import flash.display.MovieClip;	import flash.events.Event;	/**	 * This class defines the behavior of the arrows.	 */	public class Arrow extends MovieClip {
		
		/** The angle that the arrow is facing. */
		public var angle: Number = 0;				/**		 * This constructor sets up the event listeners for this object.		 */		public function Arrow() {			addEventListener(Event.ENTER_FRAME, handleFrame);		}		/**		 * This method updates the arrow's rotation so that it points at the mouse.		 * @param e:Event	The Event object that called this event handler.		 */		private function handleFrame(e:Event):void {						// Get the absolute position of the mouse, relative to the origin of the stage:			var mousex:Number = stage.mouseX;			var mousey:Number = stage.mouseY;
			
			// Change angle based on mouse position and rotate arrow. 
			var tx: Number = parent.mouseX - x;
			var ty: Number = parent.mouseY - y;
			angle = Math.atan2(ty, tx);
			angle *= 180 / Math.PI;
			rotation = angle + 90;		}	}}