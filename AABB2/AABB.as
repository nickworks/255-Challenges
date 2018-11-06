package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		public var xmin:Number;
		public var xmax:Number;
		public var ymin:Number;
		public var ymax:Number;
		// TODO: create variables to store the size (or half-size) of the bounding box
		private var halfHeight:Number;
		private var halfWidth:Number;
		
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			halfHeight = h/2;
			halfWidth = w/2;
			
			calc((xmin + xmax)/2,(ymin + ymax)/2);
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			xmin = x - halfWidth;
			xmax = x + halfWidth;
			ymin = y - halfHeight;
			ymax = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			// TODO: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if(this.xmax < other.xmin) return false;
			if(this.xmin > other.xmax) return false;
			if(this.ymax < other.ymin) return false;
			if(this.ymin > other.ymax) return false;
			return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point();
			
			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 

			return results;
		}
	}
}
