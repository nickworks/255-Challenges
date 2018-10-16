package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class SceneGameover extends MovieClip {
		
		public function SceneGameover() {
			bttnBack.addEventListener(MouseEvent.MOUSE_DOWN, clickBack);
		}
		private function clickBack(e:MouseEvent):void {
			
		}
		// TODO: tell the Game object to switch to the Title scene
		// TODO: create a method to remove any eventlisteners
	}	
}
