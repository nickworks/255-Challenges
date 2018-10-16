package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class SceneTitle extends MovieClip {
		
		public function SceneTitle() {
			bttnPlay.addEventListener(MouseEvent.MOUSE_DOWN, clickPlay);
			bttnOptions.addEventListener(MouseEvent.MOUSE_DOWN, clickOptions);
		}
		private function clickPlay(e:MouseEvent):void {
			// TODO: tell the Game scene to switch to the Gameplay scene
		}
		private function clickOptions(e:MouseEvent):void {
			// TODO: tell the Game scene to switch to the Options scene
		}
		// TODO: create a method to remove any eventlisteners
	}
}
