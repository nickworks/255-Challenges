package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {

		var xmin:Number;
		var xmax:Number;
		var ymin:Number;
		var ymax:Number;
		
		var halfWidth:Number;
		var halfHeight:Number;
		
		public function setSize(w:int, h:int):void {
			// TODO: implement the logic in this method that stores the size of the box
			this.halfWidth = w;
			this.halfHeight = h;
			
			calc((xmin + xmax) / 2, (ymin + ymax) / 2);
		}
		public function calc(x:Number, y:Number):void {
			xmin = x - halfWidth;
			xmax = x + halfWidth;
			ymin = y - halfHeight;
			ymax = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean {
			if(this.xmin > other.xmax) return false;
			if(this.xmax < other.xmin) return false;
			if(this.ymin > other.ymax) return false;
			if(this.ymax < other.ymin) return false;
			
			return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point();
			
			// TODO: calculate the best solution for moving THIS aabb out of the other AABB 

			return results;
		}
	}
}
