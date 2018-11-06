package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {

		// DONE: create variables to store the 4 edges of the bounding box
		var edgeL:Number;
		var edgeR:Number;
		var edgeT:Number;
		var edgeB:Number;
		// DONE: create variables to store the size (or half-size) of the bounding box
		var halfWidth:Number;
		var halfHeight:Number;
		
		public function setSize(w:int, h:int):void {
			// DONE: implement the logic in this method that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2;
		}
		public function calc(x:Number, y:Number):void {
			// DONE: implement the logic in this method to calculate and store the 4 edge positions of this box
			edgeL = x - halfWidth;
			edgeR = x + halfWidth;
			edgeT = y - halfHeight;
			edgeB = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			// DONE: implement the logic in this method to return false if AABBs don't overlap; otherwise return true
			if(edgeL > other.edgeR) return false;
			if(edgeR < other.edgeL) return false;
			if(edgeT > other.edgeB) return false;
			if(edgeB < other.edgeT) return false;
			return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point();
			
			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 
			var moveL:Number = other.edgeL - this.edgeR;
			var moveR:Number = other.edgeR - this.edgeL;
			var moveU:Number = other.edgeT - this.edgeB;
			var moveD:Number = other.edgeB - this.edgeT;
			
			if(Math.abs(moveL) > Math.abs(moveR)) results.x = other.edgeR - edgeL;
			else results.x = other.edgeL - edgeR;
			
			if(Math.abs(moveU) > Math.abs(moveD)) results.y = other.edgeB - edgeT;
			else results.y = other.edgeT - edgeB;
			
			if(Math.abs(results.x) > Math.abs(results.y)) results.x = 0;
			else results.y = 0;

			return results;
		}
	}
}
