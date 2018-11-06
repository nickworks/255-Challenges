package  {
	
	import flash.display.MovieClip;
	
	public class Art1 extends MovieClip {
		
		public var aabb:AABB = new AABB();
		
		public function Art1() {
			// TODO: set the size of the AABB
			aabb.setSize(120,120);
		}
		public function update():void {
			x = parent.mouseX;
			y = parent.mouseY;
			// TODO: recalculate the four edge positions of the AABB
			aabb.calc(x,y);
		}
	}
	
}
