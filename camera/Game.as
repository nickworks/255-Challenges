package {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	
	public class Game extends MovieClip {
		
		private var player:Player;
		
		public function Game() {
			
			Keyboard.setup(stage);
			
			// TODO: spawn a camera object
			
			player = new Player();
			addChild(player);
			
			player.x = stage.stageWidth/2;
			player.y = stage.stageHeight/2;
			
			spawnSomeRects();
			

			addEventListener(Event.ENTER_FRAME, gameLoop);
		}
		private function spawnSomeRects():void {
			for(var i:int = 0; i < 10; i++){
				var s:Scenery = new Scenery();
				s.x = Math.random() * 1000 - 500;
				s.y = Math.random() * 1000 - 500;
				s.scaleX = s.scaleY = Math.random() * 1 + 1;
				s.rotation = Math.random() * Math.PI;
				
				addChildAt(s, 0);
			}			
		}
		private function gameLoop(e:Event):void {
			Time.update(); // update time, calculate delta time

			if(Keyboard.onDown(Keyboard.SPACE)){
				// TODO: shake the camera
			}
			
			player.update();
			
			// TODO: update the camera to follow the player
			
			Keyboard.update(); // cache the previous state of the keyboard
		}
	}
}