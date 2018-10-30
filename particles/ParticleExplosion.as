package  {
	
	import flash.display.MovieClip;
	
	
	public class ParticleExplosion extends MovieClip {
		
		public var isDead = false;
		
		public function ParticleExplosion(spawnX:Number, spawnY:Number) {
			// constructor code
			x = spawnX;
			y = spawnY;
		}
		public function update():void {
			
		}
	}
}