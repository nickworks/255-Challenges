package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	public class AABB {

		/** hold the half width of the object for collision detection */
		private var halfWidth: Number;
		/** hold the half height of the object for collision detection */
		private var halfHeight: Number;
		/** the far left side of the box collision */
		public var xmin: Number;
		/** the far right side of the box collision */
		public var xmax: Number;
		/** the top of the box collision*/
		public var ymin: Number;
		/** the bottom of the box collision */
		public var ymax: Number;


		public function setSize(w: int, h: int): void {
			// logic that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2
		}
		public function calc(x: Number, y: Number): void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			xmin = x - halfWidth;
			xmax = x + halfWidth;
			ymin = y - halfHeight;
			ymax = y + halfHeight;
		}
		public function overlaps(other: AABB): Boolean {
			// the logic to return false if AABBs don't overlap; otherwise return true
			if (this.xmax > other.xmin) return false;
			if (this.xmin < other.xmax) return false;
			if (this.ymax > other.ymin) return false;
			if (this.ymin < other.ymax) return false;

			return true;
		}
		public function findOverlap(other: AABB): Point {
			var results: Point = new Point();

			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 
			var moveU = other.ymin - this.ymax;
			var moveD = other.ymax - this.ymin;
			var moveL = other.xmin - this.xmax;
			var moveR = other.xmax - this.xmin;

			var fix: Point = new Point();

			fix.y = (Math.abs(moveU) < Math.abs(moveD)) ? moveU : moveD;
			fix.x = (Math.abs(moveL) < Math.abs(moveR)) ? moveL : moveR;

			if (Math.abs(fix.x) < Math.abs(fix.y)) fix.y = 0;
			else fix.x = 0;

			return fix;


			return results;
		}
	}
}