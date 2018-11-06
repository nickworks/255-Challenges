package  {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	public class AABB {



		 
		var minX: Number = 0; 
		var maxX: Number = 0; 
		var minY: Number = 0; 
		var maxY: Number = 0; 
		 
		var halfWidth: Number = 0; 
		var halfHeight: Number = 0;
		
		public function setSize(w:int, h:int):void { 
			this.halfWidth = w; 
			this.halfHeight = h;
		}
		public function calc(x:Number, y:Number):void { 
			minX = x - halfWidth; 
			maxX = x + halfWidth; 
			minY = y - halfHeight; 
			maxY = y + halfHeight;
		}
		public function overlaps(other:AABB):Boolean { 
			if (this.minX > other.maxX) return false; 
			if (this.maxX < other.minX) return false; 
			 
			if (this.minY > other.maxY) return false; 
			if (this.maxY < other.minY) return false;
			 
			else return true;
		}
		public function findOverlap(other:AABB):Point {
			var results:Point = new Point(); 
			 
			var moveL:Number = other.minX - this.maxX; 
			var moveR:Number = other.maxX - this.minX; 
			var moveU:Number = other.minY - this.maxY; 
			var moveD:Number = other.maxY - this.minY; 
			 
			if (Math.abs(moveL) < Math.abs(moveR)) { 
				results.x = moveL;
			} else { 
				results.x = moveR;
			} 
			 
			if (Math.abs(moveU) < Math.abs(moveD)) { 
				results.y = moveU;
			} else { 
				results.y = moveD;
			} 
			 
			if (Math.abs(results.x) < Math.abs(results.y)) results.y = 0; 
			else results.x = 0;

			return results;
		}
		
	}
	}
		