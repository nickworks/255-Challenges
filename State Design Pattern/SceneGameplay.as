package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class SceneGameplay extends MovieClip {
		
		private var pseudoTime:Number = 0;
		
		public function SceneGameplay() {
			bomb.addEventListener(MouseEvent.MOUSE_DOWN, clickBomb);
		}
		public function anim():void {
			// TODO: add an update() method that calls this function
			pseudoTime += 0.1;
			bomb.x = 275 + Math.sin(pseudoTime) * 100;
		}
		private function clickBomb(e:MouseEvent):void {
			
		}
		// TODO: tell the Game object to switch to the Gameover scene when the bomb is clicked
		// TODO: create a method to remove any eventlisteners
	}
}
