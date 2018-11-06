package  {
	
	import flash.display.MovieClip;
	
	public class Game extends MovieClip {
		
		public var circleArray: Array = new Array();
		
		public function Game() {
			
			circleArray.push(circle1, circle2, circle3, circle4, circle5, circle6, circle7, circle8);
			
			drawCircles();
		}
		
		public function drawCircles(): void {
			for each (var circle:MovieClip in circleArray) {
				circle.alpha = circle.x / stage.stageWidth;
				circle.scaleX = circle.x / stage.stageWidth * 4;
				circle.scaleY = circle.scaleX;
				circle.removeChildAt(0);
				circle.graphics.beginFill(0xFFFFFF * Math.random());
				circle.graphics.drawCircle(0, 0, 20);
			}
		}
	}
}
