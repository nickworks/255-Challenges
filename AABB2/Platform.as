package  {
	
	import flash.display.MovieClip;
	
	public class Platform extends MovieClip {
		
		public var aabb:AABB = new AABB();
		
		public function Platform() {

			Game.platforms.push(this);
			
			aabb.setSize(width / 2, height / 2);
			
			aabb.calc(x, y);
		}
	}
	
}
