package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.BlendMode;
	
	
	public class Particle extends MovieClip {
		
		var vx:int, vy:int, va:int;
		
		public function Particle(x:int, y:int) {
			addEventListener(Event.ENTER_FRAME, handleFrame);
			blendMode = BlendMode.ADD;
			this.x = x;
			this.y = y;
			scaleX = scaleY = Math.random() * .25 + 2;
			vx = Math.random() * 20 - 10;
			vy = - Math.random() * 5;
			va = Math.random() * 60 - 30;
			graphics.clear();
			graphics.beginFill(0x0000FF);
			graphics.drawRect(-10, -10, 20, 20);			
		}
		private function handleFrame(e:Event):void {
			x += vx;
			y += vy;
			rotation += va;
			alpha -= .05;
			scaleX = scaleY += (Math.random() - scaleY) * .2;
			if(alpha <= 0) die();
			
		}
		private function die():void {
			removeEventListener(Event.ENTER_FRAME, handleFrame);
			parent.removeChild(this);
		}
	}
}
