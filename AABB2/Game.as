package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.geom.Point;
	
	public class Game extends MovieClip {
		
		// platforms automatically add themselves to this array:
		static public var platforms:Array = new Array();
		
		public function Game() {			
			addEventListener(Event.ENTER_FRAME, handleFrame);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
		}
		private function handleFrame(e:Event):void {
			
			player.update();
			
			for each(var p:Platform in platforms){
				// DONE: if player overlaps with p,
				if(player.aabb.overlaps(p.aabb)){
					// calculate overlap fix and apply to the player
					var fix:Point = player.aabb.findOverlap(p.aabb);
					player.applyFix(fix);
				}
				
			}
		}
		private function handleKeyDown(e:KeyboardEvent):void {
			if(e.keyCode == 37) player.gravityLeft();
			if(e.keyCode == 38) player.gravityUp();
			if(e.keyCode == 39) player.gravityRight();
			if(e.keyCode == 40) player.gravityDown();
		}
	}	
}
