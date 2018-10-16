package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class SceneOptions extends MovieClip {
		
		
		public function SceneOptions() {
			bttnBack.addEventListener(MouseEvent.MOUSE_DOWN, clickBack);
		}
		private function clickBack(e:MouseEvent):void {
			
		}
		// TODO: add an update() method
		// TODO: tell the Game object to switch to the Title scene
		// TODO: create a method to remove any eventlisteners
	}
	
}
