package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;

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


		public function AABB() {

		}
		public function setSize(w: int, h: int): void {
			//implement the logic in this method that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2;

		}
		public function calc(x: Number, y: Number): void {
			//implement the logic in this method to calculate and store the 4 edge positions of this box
			xmin = x - halfWidth;
			xmax = x + halfWidth;
			ymin = y - halfHeight;
			ymax = y + halfHeight;
		}
		public function overlaps(other: AABB): Boolean {
			//implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if (this.xmin > other.xmax) return false;
			if (this.xmax < other.xmin) return false;
			if (this.ymin > other.ymax) return false;
			if (this.ymax < other.ymin) return false;
			return true;
		}
	}
}