package code {
	
	import flash.geom.Rectangle;
	import flash.display.MovieClip;
	
	/**
	 * This is a simple superclass to extend AABB logic to any other
	 * MovieClip object through inheritance.
	 */
	public class ObjectAABB extends MovieClip {

		/**
		 * The right edge of the axis-aligned bounding box.
		 * We update this each frame.
		 */
		public var edgeR:int = 0;
		/**
		 * The right edge of the axis-aligned bounding box.
		 * We update this each frame.
		 */
		public var edgeL:int = 0;
		/**
		 * The right edge of the axis-aligned bounding box.
		 * We update this each frame.
		 */
		public var edgeT:int = 0;
		/**
		 * The right edge of the axis-aligned bounding box.
		 * We update this each frame.
		 */
		public var edgeB:int = 0;
		/**
		 * The half-width of the box. Used when calculating the four edges of the box from its origin.
		 */
		private var halfW:Number;
		/**
		 * The half-height of the box. Used when calculating the four edges of the box from its origin.
		 */
		private var halfH:Number;
		
		/**
		 * This method sets the half-width and half-height of the box.
		 * @param w:Number	The width of the box
		 * @param h:Number	The height of the box
		 */
		public function setSize(w:Number, h:Number):void {
			halfW = w / 2;
			halfH = h / 2;
		}
		/**
		 * This method calculates a new AABB using the Rectangle class. This method should be called whenever the object's position or size have changed.
		 */
		public function calcAABB():void {
			
			edgeL = x - halfW;
			edgeR = x + halfW;
			edgeB = y + halfH;
			edgeT = y - halfH;
			
		}
		/**
		 * This method checks to see if this AABB is overlapping with another AABB.
		 * @param other:ObjectAABB	The other ObjectAABB to check against.
		 * @return Boolean	Whether or not the two AABBs are overlapping.
		 */
		public function checkOverlap(other:ObjectAABB):Boolean {
			if(other.edgeL > edgeR) return false;
			if(other.edgeR < edgeL) return false;
			if(other.edgeT > edgeB) return false;
			if(other.edgeB < edgeT) return false;

			return true;
		}

	}
	
}
