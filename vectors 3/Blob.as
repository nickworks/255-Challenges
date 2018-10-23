package  {	import flash.display.MovieClip;	import flash.events.Event;	/**	 * This class defines the behavior of the circles.	 */	public class Blob extends MovieClip {				/**		 * This property keeps track of how much "time" has passed. The		 * value does not accurately represent time; it is only used as		 * an input into a sine wave function.		 */		private var time:Number = Math.random() * Math.PI;				/**		 * This constructor sets up the event listeners for this object.		 */		public function Blob() {			stop();			addEventListener(Event.ENTER_FRAME, handleFrame);		}		/**		 * This method updates the circle's scale.		 * @param e:Event	The Event object that called this event handler.		 */		private function handleFrame(e:Event):void {						// Set the scale of the circle			time += .05;			scaleY = scaleX = 3 + 2 * Math.sin(time);						detectOverlap();		}		/**		 * This method detects if the mouse is overlapping this circle.		 */		private function detectOverlap():void {			// Get the absolute position of the mouse, relative to the origin of the stage:			var mousex:Number = stage.mouseX;			var mousey:Number = stage.mouseY;
			var radius:Number = 5;
			radius *= scaleX;
			
			var dx: Number = mousex - x;
			var dy: Number = mousey - y;;
			var dis: Number = Math.sqrt(dx * dx + dy * dy);
			
			if (dis < radius) {
				this.gotoAndStop(2);
			}
			else {
				this.gotoAndStop(1);
			}		}	}}