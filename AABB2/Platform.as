package  {
	
	import flash.display.MovieClip;
	
	public class Platform extends MovieClip {
		
		public var aabb:AABB = new AABB();
		
		public function Platform() {

			Game.platforms.push(this);
			
			aabb.setSize(x, y);
			aabb.calc(x, y);
		}
	}
	
}
