﻿package {

	import flash.display.MovieClip;
	import flash.geom.Point;


	public class Player extends MovieClip {

		private const GRAVITY: int = 2;

		public var aabb: AABB = new AABB();
		public var velocity: Point = new Point();
		private var gravity: Point = new Point(0, 1);

		public function Player() {
			// TODO: using this.width and this.height, set the size of the AABB
			aabb.setSize(this.width, this.height);
		}
		public function update() {

			velocity = velocity.add(gravity);

			x += velocity.x;
			y += velocity.y;
			// TODO: recalculate the AABB
			aabb.calc(x,y);
		}
		public function applyFix(fix: Point) {
			// TODO: "apply" the fix
			if (fix.x != 0) {
				x += fix.x;
				velocity.x = 0;
			}
			if (fix.y != 0) {
				y += fix.y;
				velocity.y = 0;
			}
			// TODO: make sure that the object's velocity doesn't accumulate and cause clipping
			if (velocity.y >= 5) velocity.y = 5;
		}
		public function gravityLeft(): void {
			gravity = new Point(-GRAVITY, 0);
		}
		public function gravityRight(): void {
			gravity = new Point(GRAVITY, 0);
		}
		public function gravityUp(): void {
			gravity = new Point(0, -GRAVITY);
		}
		public function gravityDown(): void {
			gravity = new Point(0, GRAVITY);
		}
	}
}