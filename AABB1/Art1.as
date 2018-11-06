package  {
	
	import flash.display.MovieClip;
	
	public class Art1 extends MovieClip {
		
		public var aabb:AABB = new AABB();
		
		public function Art1() {
			aabb.setSize(width / 2, height / 2);
		}
		public function update():void {
			x = parent.mouseX;
			y = parent.mouseY;
		
			aabb.calc(x, y);
		}
	}
	
}
