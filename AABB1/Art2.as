package  {
	
	import flash.display.MovieClip;
	
	
	public class Art2 extends MovieClip {
		
		public var aabb:AABB = new AABB();		
		
		private var angle:Number = 0;
		private var mag:Number = 200;
		
		public function Art2() {
			aabb.setSize(width / 2, height / 2);
		}
		public function update(){
			angle += .01;
			x = 275 + Math.cos(angle) * mag;
			y = 200 + Math.sin(angle) * mag;
			
			aabb.calc(x, y);
		}
	}
	
}
