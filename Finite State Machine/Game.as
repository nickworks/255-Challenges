package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	
	public class Game extends MovieClip {
		
		private var peons:Array = new Array();
		private var isMousePressed:Boolean = false;
		
		public function Game() {
			
			spawnPeons(10);
			
			stage.addEventListener(MouseEvent.MOUSE_DOWN, handleMouseDown);
			stage.addEventListener(MouseEvent.MOUSE_UP, handleMouseUp);
			addEventListener(Event.ENTER_FRAME, gameLoop);
		}
		private function spawnPeons(amount:int):void {
			for(var i:int = 0; i < amount; i++){
				var p:Peon = new Peon();
				addChild(p);
				peons.push(p);
			}
		}
		private function gameLoop(e:Event):void {
			for each(var p:Peon in peons){
				p.update(isMousePressed);
			}
		}
		private function handleMouseDown(e:MouseEvent):void {
			isMousePressed = true;
		}
		private function handleMouseUp(e:MouseEvent):void {
			isMousePressed = false;
		}
	}
	
}
