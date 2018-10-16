package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		// TODO: create variables to store the size (or half-size) of the bounding box
		
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
		}
		public function overlaps(other:AABB):Boolean {
			// TODO: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point();
			
			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 

			return results;
		}
	}
}
