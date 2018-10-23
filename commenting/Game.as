package  {
	
	import flash.display.MovieClip;
	
	// TODO: add documentation comment
	/**
	 * This is our Game Object, where our game will be taking place in.
	 */
	public class Game extends MovieClip {
		
		// TODO: add documentation comment
		/**
		 * This is our Game Object's constructor code, called whenever this object in instantiated. 
		 * In this case, we are calling the setShape() function for all three of our art Objects.
		 */
		public function Game() {
			setShape(artGreen, "triangle");
			setShape(artBlue, "dodecahedron");
			setShape(artRed, "pentagon");
		}
		
		// TODO: add documentation comment
		/**
		 * This sets the shape of whatever MovieClip Object you pass in depending on what string you pass in with it.
		 * @param art The MovieClip Object whose frame you want to change.
		 * @param shape The string you pass in that will list what kind of shape you want the MovieClip Object to change to.
		 */
		private function setShape(art:MovieClip, shape:String): void {
			var frame:int = getShapeFrame(shape);
			art.gotoAndStop(frame);
		}
		
		// TODO: add documentation comment
		/**
		 * When this is called, it gets which frame we want based on what string has been passed into it.
		 * @param shape The string that lists the shape we want to change to.
		 * @return What frame we want to give our shape object in order to change it to match our given string.
		 */
		private function getShapeFrame(shape:String):int {
			var frame:int = 0;
			switch(shape){
				case "circle":
					frame = 1;
					break;
				case "pentagon":
					frame = 2;
					break;
				case "star":
					frame = 3;
					break;
				case "square":
					frame = 4;
					break;
				case "triangle":
					frame = 5;
					break;
				default:
					frame = 6;
					break;
			}
			return frame;
		}
	}
}
