package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class AABB {

		// TODO: create variables to store the 4 edges of the bounding box
		private var w:Number;
		private var h:Number;
		// TODO: create variables to store the size (or half-size) of the bounding box
		private var xmin:Number;
		private var xmax:Number;
		private var ymin:Number;
		private var ymax:Number;
		
		public function AABB() {
			setSize(w, h);
		}
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			this.w = w;
			this.h = h;
			calc((xmin + xmax)/2, (ymin + ymax)/2)
		}
		public function calc(x:Number, y:Number):void {
			// TODO: implement the logic in this method to calculate and store the 4 edge positions of this box
			xmin = x - w;
			xmax = x + w;
			ymin = y - h;
			ymax = y + h;
			
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
