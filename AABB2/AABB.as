package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {
		public var halfWidth:Number;
		public var halfHeight:Number;
		
		public var xMin:Number;
		public var xMax:Number;
		public var yMin:Number;
		public var yMax:Number;

		// TODO: create variables to store the 4 edges of the bounding box
		// TODO: create variables to store the size (or half-size) of the bounding box
		
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2;
			
			calc((xMax + xMin) / 2, (yMax + yMin) / 2);
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			xMin = x - halfWidth;
			xMax = x + halfWidth;
			
			yMin = y - halfHeight;
			yMax = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			// TODO: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if(this.xMin > other.xMax) return false;
			if(this.xMax < other.xMin) return false;
			if(this.yMin > other.yMax) return false;
			if(this.yMax < other.yMin) return false;
			return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point();
			
			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 

			return results;
		}
	}
}
