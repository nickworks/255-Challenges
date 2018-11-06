﻿package {

	import flash.display.MovieClip;


	public class Art2 extends MovieClip {

		public var aabb: AABB = new AABB();

		private var angle: Number = 0;
		private var mag: Number = 200;

		public function Art2() {
			//set the size of the AABB
			aabb.setSize(width, height);
		}
		public function update() {
			angle += .01;
			x = 275 + Math.cos(angle) * mag;
			y = 200 + Math.sin(angle) * mag;
			//recalculate the four edge positions of the AABB
			aabb.calc(x, y);

		}
	}

}