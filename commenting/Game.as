package  {
	
	import flash.display.MovieClip;
	
	// TODO: add documentation comment
	public class Game extends MovieClip {
		
		// TODO: add documentation comment
		public function Game() {
			setShape(artGreen, "triangle");
			setShape(artBlue, "dodecahedron");
			setShape(artRed, "pentagon");
		}
		
		// TODO: add documentation comment
		private function setShape(art:MovieClip, shape:String): void {
			var frame:int = getShapeFrame(shape);
			art.gotoAndStop(frame);
		}
		
		// TODO: add documentation comment
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
