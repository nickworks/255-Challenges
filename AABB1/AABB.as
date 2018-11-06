package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		// TODO: create variables to store the size (or half-size) of the bounding box
		
		var minX:Number = 0;
		var maxX:Number = 0;
		var minY:Number = 0;
		var maxY:Number = 0;
		
		var halfWidth:Number = 0;
		var halfHeight:Number = 0;
		
		public function AABB() {
			
		}
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			halfWidth = w;
			halfHeight = h;
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			minX = x - halfWidth;
			maxX = x + halfWidth;
			minY = y - halfHeight;
			maxY = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			// TODO: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if (maxX < other.minX) return true;
			if (minX > other.maxX) return true;
			
			if (minY > other.maxY) return true;
			if (maxY < other.minY) return true;
			else return false;
		}
	}
}
