package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		// TODO: create variables to store the size (or half-size) of the bounding box
		public var halfWidth:Number;
		public var halfHeight:Number;
		
		public var xMin:Number;
		public var xMax:Number;
		public var yMin:Number;
		public var yMax:Number;
		
		public function AABB(w:int, h:int) {
			setSize(w, h);
		}
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2;
			calc((xMin + xMax) / 2, (yMin + yMax) / 2);
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			//left edge = x - halfWidth
			xMin = x - halfWidth;
			//right edge = x + halfWidth
			xMax = x + halfWidth;
			//top edge = y - halfHeight
			yMin = y - halfHeight;
			//bottom edge = y + halfHeight
			yMax = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			// TODO: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if(this.xMax < other.xMin) return false;
			if(this.xMin > other.xMax) return false;
			if(this.yMax < other.yMin) return false;
			if(this.yMin > other.yMax) return false;
			return true;
		}
	}
}
