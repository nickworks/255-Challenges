package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class Game extends MovieClip {
		
		private var art1:Art1;
		private var art2:Art2;
		
		public function Game() {
			art1 = new Art1();
			art2 = new Art2();
			addChild(art1);
			addChild(art2);
			
			addEventListener(Event.ENTER_FRAME, handleFrame);
		}
		private function handleFrame(e:Event):void {

			art1.update();
			art2.update();
			
			if(art1.aabb.overlaps(art2.aabb)){
				art1.alpha = 1;
				art2.alpha = 1;
			} else {
				art1.alpha = .25;
				art2.alpha = .25;
			}
		}
	}	
}
