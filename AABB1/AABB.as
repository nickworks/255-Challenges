package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class AABB {

		// DONE: create variables to store the 4 edges of the bounding box
		var edgeL:Number;
		var edgeR:Number;
		var edgeT:Number;
		var edgeB:Number;
		// DONE: create variables to store the size (or half-size) of the bounding box
		var halfWidth:Number;
		var halfHeight:Number;
		
		public function AABB() {
			
		}
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
	}
}
