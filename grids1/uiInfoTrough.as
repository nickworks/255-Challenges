package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class uiInfoTrough extends MovieClip {
		
		var timer:int = 0;
		
		public function uiInfoTrough() {
			addEventListener(Event.ENTER_FRAME, handleFrame);
		}
		private function handleFrame(e:Event):void {
			timer--;
			if(timer <= 0){
				timer = 10;
				infoTrough.x++;
				infoTrough.x%=180;
			}
		}
	}
}
