package  {
	
	import flash.display.MovieClip;
	
	
	public class ParticleBubble extends MovieClip {
		
		public var isDead = false;
		
		public function ParticleBubble(spawnX:Number, spawnY:Number) {
			// constructor code
			x = spawnX;
			y = spawnY;
			
			scaleX = 0.1;
			scaleY = scaleX;
		}
		public function update():void {
			if (scaleX < 1) scaleX += 0.1;
			if (scaleX > 1) scaleX = 1;
			scaleY = scaleX;
			
			y--;
		}
	}
}