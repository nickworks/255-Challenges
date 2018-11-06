package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		private var halfWidth:Number;
		private var halfHeight:Number;
		// TODO: create variables to store the size (or half-size) of the bounding box
		private var xmin:Number;
		private var xmax:Number;
		private var ymin:Number;
		private var ymax:Number;
		
		public function AABB() {
	
		}
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			halfWidth = w / 2;
			halfHeight = h / 2;
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
	}
}
