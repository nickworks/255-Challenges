package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	/**
	 * This class simply spawns 20 Dust objects.
	 */
	public class Game extends MovieClip {
		
		/**
		 * This constructor spawns 20 Dust objects and adds them to the display list.
		 */
		public function Game() {
			for(var tx:int = 0; tx < 5; tx ++){
				for(var ty:int = 0; ty < 4; ty ++){
					var d:Dust = new Dust(tx * 100 + 50, ty * 100 + 50);
					addChild(d);
				}
			}
		}
	}	
}
