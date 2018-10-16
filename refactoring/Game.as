package  {
	
	import flash.display.MovieClip;
	
	public class Game extends MovieClip {
		
		public function Game() {

			// TODO: refactor this function down to 8 lines of code
			// (hint: extract a method to remove duplicate code)
			
			circle1.alpha = circle1.x / stage.stageWidth;
			circle1.scaleX = circle1.x / stage.stageWidth * 4;
			circle1.scaleY = circle1.scaleX;
			circle1.removeChildAt(0);
			circle1.graphics.beginFill(0xFFFFFF * Math.random());
			circle1.graphics.drawCircle(0, 0, 20);
			
			circle2.alpha = circle2.x / stage.stageWidth;
			circle2.scaleX = circle2.x / stage.stageWidth * 4;
			circle2.scaleY = circle2.scaleX;
			circle2.removeChildAt(0);
			circle2.graphics.beginFill(0xFFFFFF * Math.random());
			circle2.graphics.drawCircle(0, 0, 20);
			
			circle3.alpha = circle3.x / stage.stageWidth;
			circle3.scaleX = circle3.x / stage.stageWidth * 4;
			circle3.scaleY = circle3.scaleX;
			circle3.removeChildAt(0);
			circle3.graphics.beginFill(0xFFFFFF * Math.random());
			circle3.graphics.drawCircle(0, 0, 20);
			
			circle4.alpha = circle4.x / stage.stageWidth;
			circle4.scaleX = circle4.x / stage.stageWidth * 4;
			circle4.scaleY = circle4.scaleX;
			circle4.removeChildAt(0);
			circle4.graphics.beginFill(0xFFFFFF * Math.random());
			circle4.graphics.drawCircle(0, 0, 20);
			
			circle5.alpha = circle5.x / stage.stageWidth;
			circle5.scaleX = circle5.x / stage.stageWidth * 4;
			circle5.scaleY = circle5.scaleX;
			circle5.removeChildAt(0);
			circle5.graphics.beginFill(0xFFFFFF * Math.random());
			circle5.graphics.drawCircle(0, 0, 20);			
			
			circle6.alpha = circle6.x / stage.stageWidth;
			circle6.scaleX = circle6.x / stage.stageWidth * 4;
			circle6.scaleY = circle6.scaleX;
			circle6.removeChildAt(0);
			circle6.graphics.beginFill(0xFFFFFF * Math.random());
			circle6.graphics.drawCircle(0, 0, 20);
			
			circle7.alpha = circle7.x / stage.stageWidth;
			circle7.scaleX = circle7.x / stage.stageWidth * 4;
			circle7.scaleY = circle7.scaleX;
			circle7.removeChildAt(0);
			circle7.graphics.beginFill(0xFFFFFF * Math.random());
			circle7.graphics.drawCircle(0, 0, 20);
			
			circle8.alpha = circle8.x / stage.stageWidth;
			circle8.scaleX = circle8.x / stage.stageWidth * 4;
			circle8.scaleY = circle8.scaleX;
			circle8.removeChildAt(0);
			circle8.graphics.beginFill(0xFFFFFF * Math.random());
			circle8.graphics.drawCircle(0, 0, 20);
		}
	}
}
