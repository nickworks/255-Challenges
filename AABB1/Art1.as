package  {
	
	import flash.display.MovieClip;
	
	public class Art1 extends MovieClip {
		
		public var aabb:AABB = new AABB(width, height);
		
		public function Art1() {
			// TODO: set the size of the AABB
			aabb.setSize(width, height);
		}
		public function update():void {
			x = parent.mouseX;
			y = parent.mouseY;
			aabb.calc(x, y);
			// TODO: recalculate the four edge positions of the AABB
		}
	}
	
}
